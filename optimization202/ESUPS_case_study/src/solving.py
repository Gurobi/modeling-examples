from dataclasses import dataclass
from enum import IntEnum
from typing import Tuple, Union

import gurobipy as gp
from gurobipy import GRB, tupledict

from src.data import Depot, Disaster, DisasterImpact, Location, TransportMode


class AllocationStrategy(IntEnum):
    MinimizeTwoStage = 0
    MinimizeFixedInventory = 1
    WorstDepot = 2


@dataclass(frozen=True)
class SolverParameters:
    """
    Parameters that influence how the solver transforms the Problem into a mathematical model.

    Attributes
    ----------
    allocation_strategy
        If and how inventory can be reallocated
    scale_demand
        Whether demand should be scaled (down) to not exceed supply
    """

    allocation_strategy: AllocationStrategy = (
        AllocationStrategy.MinimizeFixedInventory,
    )
    scale_demand: bool = False


CostMatrix = dict[Tuple[Location, Location, TransportMode], float]


@dataclass(frozen=True)
class Problem:
    depots: list[Depot]
    inventory: dict[Depot, int]
    demand: dict[DisasterImpact, float]
    disasters: list[Disaster]
    probabilities: dict[Disaster, float]
    transport_modes: list[TransportMode]
    cost: CostMatrix


@dataclass(frozen=True)
class Solution:
    """
    Result of solving a single Problem with specific SolverParameters

    Attributes
    ----------
    total_cost_inc_dummy
        Total transportation cost including artificial cost for using the dummy node (myObj)
    total_cost_exc_dummy
        Total transportation cost from the real depots (myObjNoDum)
    total_demand
        Total demand in the input data (myWeightedDemand)
    covered_demand_exc_dummy
        Demand served from real depots, averaged over all scenarios (myWeightedDemandMetNoDum)
    fraction_of_disasters_using_dummy
        Fraction of disaster scenarios for which not enough real inventory is available (myFractionOfDisastersUsingDummy)
    duals_inventory_exc_dummy_plus_dummy_cost
        Adjusted dual variables for the inventory constraints (values are independent of dummy costs) (dualsInvNoDum_PlusDummyCost)
    duals_inventory_exc_dummy_unadjusted
        Original dual variables for the inventory constraints, aggregated over disaster scenarios (dualsInvNoDum_UnAdj)
    duals_inventory_exc_dummy_all
        All original dual variables for the inventory constraints (dualsInvNoDum_All)
    flow_exc_dummy
        Allocation of depot inventory to disaster locations in each scenario, excluding the dummy depot (myFlowNoDum)
    flow
        Allocation of depot inventory to disaster locations in each scenario (myFlow)
    optimal_inventory
        Optimal or fixed allocation of inventory to depots (myOptInvNoDum)
    dual_total_inventory
        Dual variable for the total inventory constraint (dualTotInv)
    """

    total_cost_inc_dummy: float
    total_cost_exc_dummy: float
    total_demand: float
    covered_demand_exc_dummy: float
    fraction_of_disasters_using_dummy: float
    duals_inventory_exc_dummy_plus_dummy_cost: dict[Depot, float]
    duals_inventory_exc_dummy_unadjusted: dict[Depot, float]
    duals_inventory_exc_dummy_all: dict[Tuple[Disaster, Depot], float]
    flow_exc_dummy: dict[Tuple[Disaster, Depot, DisasterImpact, TransportMode], float]
    flow: dict[Tuple[Disaster, Depot, DisasterImpact, TransportMode], float]
    optimal_inventory: dict[Depot, float]
    dual_total_inventory: float

    _dummy_depot: Depot


class StochasticSolver:
    _threshold_cost_elim: float = 1e9
    _threshold_cost_dummy: float = 1e9

    def __init__(self):
        self._dummy = Location("DUMMY", "", "", 0, 0)
        self._env = gp.Env(params={"OutputFlag": 0, "Threads": 1})

    def dispose(self):
        self._env.dispose()
        self._env = None

    def solve(self, problem: Problem, parameters: SolverParameters) -> Solution:
        sources = problem.depots + [self._dummy]

        demand = (
            self._scale_demand(problem) if parameters.scale_demand else problem.demand
        )

        arcs = gp.tuplelist(
            [
                (k, i, j, v)
                for i in sources
                for k in problem.disasters
                for j in k.impacted_locations
                for v in problem.transport_modes
                if (
                    self._get_arc_cost(problem.cost, i, j, v)
                    < self._threshold_cost_elim
                )
                or (i == self._dummy)
            ]
        )

        arc_cost = {
            (k, i, j, v): self._get_arc_cost(problem.cost, i, j, v)
            * problem.probabilities[k]
            for (k, i, j, v) in arcs
        }

        model = gp.Model("StochLP", env=self._env)

        # First stage variable: Quantity to be allocated to each depot
        x: tupledict[Depot, gp.Var] = model.addVars(problem.depots, lb=0, name="x")

        # Second stage variable: Quantity transported from (real or dummy) depot to disaster locations using each mode of transport
        y: tupledict[
            Tuple[Disaster, Union[Depot, Location], DisasterImpact, TransportMode],
            gp.Var,
        ] = model.addVars(arcs, lb=0, obj=arc_cost, name="y")

        # Constraint: Total incoming arc flow must cover demand for each disaster location
        model.addConstrs(
            (
                y.sum(k, "*", j, "*") == demand[j]
                for k in problem.disasters
                for j in k.impacted_locations
            ),
            name="satisfyDemand",
        )

        # Constraint: Total outgoing arc flow must match initial or reallocated inventory
        inventory_balance: tupledict[
            Tuple[Disaster, Depot], gp.Constr
        ] = model.addConstrs(
            (
                y.sum(k, i, "*", "*") <= x[i]
                for k in problem.disasters
                for i in problem.depots
            ),
            name="satisfySupply",
        )

        # Constraint: Ensure inventory reallocation matches total existing inventory
        total_initial_inventory = sum(problem.inventory.values())
        match_total_inventory = model.addConstr(x.sum() == total_initial_inventory)

        def fix_inventory_balance(values: dict[Disaster, float]):
            for key, value in values.items():
                x[key].LB = x[key].UB = value

        if parameters.allocation_strategy == AllocationStrategy.MinimizeFixedInventory:
            fix_inventory_balance(problem.inventory)
        elif parameters.allocation_strategy == AllocationStrategy.WorstDepot:
            worst_depot = None
            worst_objective = -1e100
            for depot in problem.depots:
                centralized_inventory = {
                    other: total_initial_inventory if other == depot else 0
                    for other in problem.depots
                }
                fix_inventory_balance(centralized_inventory)
                model.optimize()
                if model.Status != GRB.Status.OPTIMAL:
                    raise RuntimeError("Could not solve model to optimality")
                if model.ObjVal > worst_objective:
                    worst_depot = depot
                    worst_objective = model.ObjVal
            centralized_inventory = {
                other: total_initial_inventory if other == worst_depot else 0
                for other in problem.depots
            }
            fix_inventory_balance(centralized_inventory)

        model.optimize()
        if model.Status != GRB.Status.OPTIMAL:
            raise RuntimeError("Could not solve model to optimality")

        # Total transport cost
        total_cost_inc_dummy = model.ObjVal
        dummy_cost = sum(
            var.X * var.Obj for var in y.select("*", self._dummy, "*", "*")
        )
        total_cost_exc_dummy = total_cost_inc_dummy - dummy_cost

        # Demand met without using the dummy node
        covered_demand_by_dummy = sum(
            y[k, i, j, v].X * problem.probabilities[k]
            for (k, i, j, v) in arcs.select("*", self._dummy, "*", "*")
        )
        total_demand = sum(
            local_demand * problem.probabilities[j.disaster]
            for (j, local_demand) in demand.items()
        )
        covered_demand_exc_dummy = total_demand - covered_demand_by_dummy

        # Flow in solution
        solution_y = {key: y[key].X for key in arcs}

        # Fraction of disaster scenarios in which the dummy supply is used
        fraction_of_disasters_using_dummy = len(
            [
                disaster
                for disaster in problem.disasters
                if sum(
                    solution_y[key]
                    for key in arcs.select(disaster, self._dummy, "*", "*")
                )
                > 0
            ]
        ) / len(problem.disasters)

        # Dual variables for the inventory balance constraints
        dual_correction = fraction_of_disasters_using_dummy * self._threshold_cost_dummy
        duals_inventory_exc_dummy_unadjusted = {
            i: sum(inventory_balance[k, i].Pi for k in problem.disasters)
            for i in problem.depots
        }
        duals_inventory_exc_dummy_plus_dummy_cost = {
            i: dual_correction + pi
            for (i, pi) in duals_inventory_exc_dummy_unadjusted.items()
        }
        duals_inventory_exc_dummy_all = {
            (k, i): constr.Pi for (k, i), constr in inventory_balance.items()
        }

        flow = {(k, i, j, v): var.X for (k, i, j, v), var in y.items() if var.X > 0}

        flow_exc_dummy = {
            (k, i, j, v): value
            for (k, i, j, v), value in flow.items()
            if i != self._dummy
        }

        optimal_inventory = {depot: var.X for depot, var in x.items()}

        dual_total_inventory = (
            match_total_inventory.Pi
            if parameters.allocation_strategy
            == AllocationStrategy.MinimizeFixedInventory
            else None
        )

        return Solution(
            total_cost_inc_dummy,
            total_cost_exc_dummy,
            total_demand,
            covered_demand_exc_dummy,
            fraction_of_disasters_using_dummy,
            duals_inventory_exc_dummy_plus_dummy_cost,
            duals_inventory_exc_dummy_unadjusted,
            duals_inventory_exc_dummy_all,
            flow_exc_dummy,
            flow,
            optimal_inventory,
            dual_total_inventory,
            self._dummy,
        )

    def _get_arc_cost(
        self,
        cost: CostMatrix,
        source: Location,
        target: DisasterImpact,
        mode: TransportMode,
    ):
        if source == self._dummy:
            return self._threshold_cost_dummy
        cell = cost.get((source, target.location, mode))
        return self._threshold_cost_elim if cell == None else cell

    def _scale_demand(self, problem: Problem) -> dict[DisasterImpact, float]:
        supply = sum(problem.inventory.values())
        result: dict[DisasterImpact, float] = {}
        for disaster in problem.disasters:
            total_demand = sum(
                problem.demand[location] for location in disaster.impacted_locations
            )
            factor = min(1, supply / total_demand) if total_demand > 1e-6 else 1
            for location in disaster.impacted_locations:
                result[location] = factor * problem.demand[location]
        return result
