from enum import IntEnum
from multiprocessing import Pool
from os import getenv
from typing import Callable

import pandas as pd

from src.data import Dataset, Disaster, DisasterImpact, DistanceInfo, Item
from src.solving import (
    AllocationStrategy,
    CostMatrix,
    Problem,
    Solution,
    SolverParameters,
    StochasticSolver,
)


class SolverObjective(IntEnum):
    Cost = (0,)
    Time = (1,)
    Distance = 2


SolutionTags = tuple[SolverObjective, AllocationStrategy]


class AnalysisParameters:
    """

    Attributes
    ----------
    expand_depot_set
        Flag indicating whether inventory can be reallocated to depots that don't currently hold any stock
    care_about_month_demand
        Flag indicating whether we take month-by-month demand (True) or the general number (False)
    disaster_month
        Month from which to select disasters
    num_months_to_average
        Number of months to use for selecting disasters, when disasterMonth>=0
    optimization_objectives
        Set of objectives to use for running the optimization model
    comparison_objectives
        Set of objectives to use for comparing results
    allocation_strategies
        Which strategies to test for (re)allocation inventory to depots in the first stage
    min_year
        First year from which disasters should be taken into account
    max_year
        Last year from which disasters should be taken into account
    scale_demand
        Whether demand must be scaled to not exceed total available inventory or not


    """

    expand_depot_set: bool = False
    care_about_month_demand: bool = True
    disaster_month: int = -1
    num_months_to_average: int = 3
    optimization_objectives: list[SolverObjective] = [
        SolverObjective.Cost,
        SolverObjective.Time,
    ]
    comparison_objectives: list[SolverObjective] = list(SolverObjective)
    allocation_strategies: list[AllocationStrategy] = list(AllocationStrategy)
    min_year: int = 1900
    max_year: int = 2100
    scale_demand: bool = True


class Analysis:
    """
    Analysis results for multiple optimization runs for a single dataset and item, using different objectives and allocation strategies.

    Attributes
    ----------
    parameters:
        Parameters used to construct the analysis
    dataset:
        Original dataset being analyzed
    item:
        Item for which the analysis was performed
    solutions:
        Dictionary of solutions for all solved problems
    solution_stats
        Index: objective, strategy
        Columns:
        - coveredDemandExcDummy
        - dualTotInv
        - totalCostIncDummy
        - totalCostExcDummy
        - totalDemand
        - fractionOfDisastersUsingDummy
        - averageUnitCost
        - demandFulfillmentFraction
    balance_metric
        Index: objective
        Columns: balanceMetric
    units_shipped
        Index: objective, strategy, mode
        Columns: unitsShipped, unitsShippedWeighted
    people_served_per_item
        Index: objective, strategy
        Columns: peopleServedPerItem
    cross_ompact
        Index: objective, strategy, other
        Columns: impact
    """

    parameters: AnalysisParameters
    dataset: Dataset
    item: Item
    solutions: dict[SolutionTags, Solution]
    solution_stats: pd.DataFrame
    balance_metric: pd.DataFrame
    units_shipped: pd.DataFrame
    people_served_per_item: pd.DataFrame
    cross_impact: pd.DataFrame

    def __init__(
        self,
        parameters: AnalysisParameters,
        dataset: Dataset,
        item: Item,
        solutions: dict[SolutionTags, Solution],
        solution_stats: pd.DataFrame,
        balance_metric: pd.DataFrame,
        units_shipped: pd.DataFrame,
        people_served_per_item: pd.DataFrame,
        cross_impact: pd.DataFrame,
    ):
        self.parameters = parameters
        self.dataset = dataset
        self.item = item
        self.solutions = solutions
        self.solution_stats = solution_stats
        self.balance_metric = balance_metric
        self.units_shipped = units_shipped
        self.people_served_per_item = people_served_per_item
        self.cross_impact = cross_impact


class AnalyzerWorker:
    def __init__(self, parameters: AnalysisParameters):
        self.parameters = parameters
        self._solver = StochasticSolver()

    def run(self, dataset: Dataset, item: Item) -> Analysis:
        #a=len(str(dataset))
        dataset = self._filter_dataset(dataset)
        #print(len(str(dataset))!=a)
        probabilities = {
            disaster: 1 / len(dataset.disasters) for disaster in dataset.disasters
        }

        solutions: dict[SolutionTags, Solution] = {}

        # Construct cost matrices once
        cost_matrices = {
            objective: self._get_cost_matrix(dataset, item, objective)
            for objective in SolverObjective
        }

        # Construct inventory
        inventory = self._select_inventory(dataset, item)
        if sum(inventory.values()) == 0:
            return None

        # Construct demand
        demand = self._select_demand(dataset, item)

        # Solve models for all objectives and strategies
        for objective in self.parameters.optimization_objectives:
            for strategy in self.parameters.allocation_strategies:
                problem = Problem(
                    dataset.depots,
                    inventory,
                    demand,
                    dataset.disasters,
                    probabilities,
                    dataset.transport_modes,
                    cost_matrices[objective],
                )
                parameters = SolverParameters(strategy, self.parameters.scale_demand)
                tags = (objective, strategy)
                solutions[tags] = self._solver.solve(problem, parameters)

        return self._post_process(dataset, item, cost_matrices, solutions)

    def dispose(self):
        self._solver.dispose()

    def _select_inventory(self, dataset: Dataset, item: Item):
        return {
            depot: dataset.inventory.get((depot, item), 0)
            for depot in dataset.depots
            if self.parameters.expand_depot_set
            or dataset.inventory.get((depot, item), 0) > 0
        }

    def _filter_dataset(self, dataset: Dataset) -> Dataset:
        if self.parameters.disaster_month > -1:
            months = range(
                self.parameters.disaster_month,
                self.parameters.disaster_month
                + 1
                + self.parameters.num_months_to_average,
            )
            months = [(month - 1) % 12 + 1 for month in months]
            predicate: Callable[[Disaster], bool] = (
                lambda disaster: disaster.month in months
            )
            dataset = dataset.take_disaster_subset(predicate)

        dataset = dataset.take_disaster_subset(
            lambda disaster: disaster.year >= self.parameters.min_year
            and disaster.year <= self.parameters.max_year
        )

        return dataset

    def _select_demand(
        self, dataset: Dataset, item: Item
    ) -> dict[DisasterImpact, float]:
        source = (
            dataset.monthly_demand
            if self.parameters.care_about_month_demand
            else dataset.general_demand
        )
        return {
            location: source.get((location, item), 0)
            for disaster in dataset.disasters
            for location in disaster.impacted_locations
        }

    def _get_cost_matrix(
        self, dataset: Dataset, item: Item, objective: SolverObjective
    ) -> CostMatrix:
        return {
            key: self._get_cost_element(value, objective, item)
            for key, value in dataset.distance.items()
        }

    def _get_cost_element(
        self, cell: DistanceInfo, objective: SolverObjective, item: Item
    ):
        if objective == SolverObjective.Cost:
            return item.weight * cell.cost_per_ton
        elif objective == SolverObjective.Time:
            return cell.time
        elif objective == SolverObjective.Distance:
            return cell.distance
        else:
            raise RuntimeError(f"Undefined objective {objective}")

    def _post_process(
        self,
        dataset: Dataset,
        item: Item,
        costs: dict[SolverObjective, CostMatrix],
        solutions: dict[SolutionTags, Solution],
    ):
        beta_source = (
            dataset.persons_per_item_monthly
            if self.parameters.care_about_month_demand
            else dataset.persons_per_item_general
        )
        beta = {
            location.id: beta_source[location, item]
            for disaster in dataset.disasters
            for location in disaster.impacted_locations
        }

        solution_stats = pd.DataFrame.from_records(
            [
                {
                    "objective": objective,
                    "strategy": strategy,
                    "coveredDemandExcDummy": solution.covered_demand_exc_dummy,
                    "dualTotInv": solution.dual_total_inventory,
                    "totalCostIncDummy": solution.total_cost_inc_dummy,
                    "totalCostExcDummy": solution.total_cost_exc_dummy,
                    "totalDemand": solution.total_demand,
                    "fractionOfDisastersUsingDummy": solution.fraction_of_disasters_using_dummy,
                }
                for (objective, strategy), solution in solutions.items()
            ]
        ).set_index(["objective", "strategy"])

        df_flows = pd.DataFrame.from_records(
            [
                {
                    "objective": objective,
                    "strategy": strategy,
                    "disaster": disaster.id,
                    "depot": depot.id,
                    "impact": impact.id,
                    "location": impact.location.id,
                    "mode": mode.id,
                    "flow": value,
                    "distance": dataset.distance[depot, impact.location, mode].distance
                    if depot.id != "DUMMY"
                    else None,
                }
                for (objective, strategy), solution in solutions.items()
                for (disaster, depot, impact, mode), value in solution.flow.items()
            ]
        )

        # Average unit cost
        solution_stats["averageUnitCost"] = solution_stats["totalCostExcDummy"] / (
            solution_stats["coveredDemandExcDummy"] + 1e-7
        )

        # Demand fulfillment fraction
        solution_stats["demandFulfillmentFraction"] = solution_stats[
            "coveredDemandExcDummy"
        ] / (solution_stats["totalDemand"] + 1e-7)

        # Balance metric
        strategies = set(solution_stats.reset_index()["strategy"])
        pivoted = solution_stats.reset_index().pivot(
            index="objective", columns="strategy", values="totalCostExcDummy"
        )
        pivoted["balanceMetric"] = (
            pivoted[AllocationStrategy.MinimizeFixedInventory]
            / (pivoted[AllocationStrategy.MinimizeTwoStage] + 1e-7)
            if AllocationStrategy.MinimizeFixedInventory in strategies
            and AllocationStrategy.MinimizeTwoStage in strategies
            else None
        )
        balance_metric = pivoted

        df_probabilities = pd.DataFrame.from_dict(
            {
                disaster.id: dataset.probabilities[disaster]
                for disaster in dataset.disasters
            },
            columns=["probability"],
            orient="index",
        )

        # Units shipped
        df_flow_no_dummy = df_flows.join(df_probabilities, on="disaster")
        df_flow_no_dummy = df_flow_no_dummy[
            df_flow_no_dummy["depot"] != "DUMMY"
        ]  # TODO Replace hardcoded dummy ID
        temp = df_flow_no_dummy.copy()
        temp["unitsShipped"] = temp["probability"] * temp["flow"]
        temp["unitsShippedWeighted"] = temp["unitsShipped"] * temp["distance"]
        units_shipped = (
            temp.set_index(["objective", "strategy", "mode"])[
                ["unitsShipped", "unitsShippedWeighted"]
            ]
            .groupby(["objective", "strategy", "mode"])
            .sum()
        )

        # People served per item
        temp = df_flow_no_dummy.copy()
        temp["beta"] = temp["impact"].apply(lambda loc: beta[loc])
        temp["peopleServed"] = temp["probability"] * temp["beta"] * temp["flow"]
        people_served = (
            temp.set_index(["objective", "strategy"])["peopleServed"]
            .groupby(["objective", "strategy"])
            .sum()
        )
        people_served_per_item = pd.DataFrame(
            people_served / (solution_stats["coveredDemandExcDummy"] + 1e-7),
            columns=["peopleServedPerItem"],
        )

        # Impact of optimizing one objective on another objective
        impact = []
        for other in self.parameters.comparison_objectives:
            cost = {
                (depot.id, location.id, mode.id): value
                for (depot, location, mode), value in costs[other].items()
            }
            temp = df_flow_no_dummy.copy()
            if temp.empty:
                raise RuntimeError("Empty flow matrix encountered")
            temp["cost"] = temp.apply(
                lambda row: cost[row["depot"], row["location"], row["mode"]], axis=1
            )
            temp["other"] = other
            temp["impact"] = temp["cost"] * temp["probability"] * temp["flow"]
            impact.append(temp.reset_index())
        cross_impact = (
            pd.concat(impact)
            .groupby(["objective", "strategy", "other"])[["impact"]]
            .sum()
        )

        return Analysis(
            self.parameters,
            dataset,
            item,
            solutions,
            solution_stats,
            balance_metric,
            units_shipped,
            people_served_per_item,
            cross_impact,
        )


class Analyzer:
    """
    Service responsible for performing optimization runs and analysis on the results
    """

    def __init__(self, parameters: AnalysisParameters):
        self.parameters = parameters

    def run(self, dataset: Dataset, item: Item) -> Analysis:
        worker = AnalyzerWorker(self.parameters)
        result = worker.run(dataset, item)
        worker.dispose()
        return result

    def run_all(self, dataset: Dataset) -> dict[tuple[str, Item], Analysis]:
        inventory_datasets = {
            filename: dataset.take_inventory_scenario(filename)
            for filename in dataset.inventory_scenarios
        }
        tasks = [
            (filename, inventory_dataset, item)
            for (filename, inventory_dataset) in inventory_datasets.items()
            for item in inventory_dataset.items
        ]

        return self._run_tasks(tasks)

    def _run_tasks(self, tasks: list[tuple[str, Dataset, Item]]):
        use_multi_processing = getenv("CI", "false") == "false"
        use_multi_processing = False
        if use_multi_processing:
            with Pool(
                initializer=_analysis_worker_init, initargs=[self.parameters]
            ) as pool:
                result: list[tuple[str, Analysis]] = pool.map(
                    _analysis_worker_call, tasks
                )
        else:
            worker = AnalyzerWorker(self.parameters)
            result = [
                (filename, worker.run(dataset, item))
                for (filename, dataset, item) in tasks
            ]
            worker.dispose()
        return {
            (filename, analysis.item): analysis
            for (filename, analysis) in result
            if analysis is not None
        }


def _analysis_worker_init(parameters):
    global worker
    worker = AnalyzerWorker(parameters)


def _analysis_worker_call(arg: tuple[Dataset, Item]) -> tuple[str, Analysis]:
    global worker
    (filename, dataset, item) = arg
    return (filename, worker.run(dataset, item))
