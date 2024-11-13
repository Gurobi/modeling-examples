

#Code for the class

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





#instanctiate object, might be better to just make the object

parameters = AnalysisParameters()



analyzer = Analyzer(parameters)


#def run_all(self, dataset: Dataset) -> dict[tuple[str, Item], Analysis]:
inventory_datasets = {
    filename: dataset.take_inventory_scenario(filename)
    for filename in dataset.inventory_scenarios
}
tasks = [
    (filename, inventory_dataset, item)
    for (filename, inventory_dataset) in inventory_datasets.items()
    for item in inventory_dataset.items
]




#def _run_tasks(self, tasks: list[tuple[str, Dataset, Item]]):



_solver=StochasticSolver()
#worker = AnalyzerWorker(self.parameters)
result = [
    (filename, format_data(dataset, item,parameters))
    for (filename, dataset, item) in tasks
]





PROCESSED_INFO= {
    (filename, analysis.item): analysis
    for (filename, analysis) in result
    if analysis is not None
}



