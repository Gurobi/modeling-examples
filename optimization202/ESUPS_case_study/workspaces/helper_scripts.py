
#Called in analysis/analysis worker to filter the disasters by time
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















