#This script will roughly fill in the job that a worker does,
#it will become a jupyter notebook
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


def format_data(dataset,item,parameters):
#Calculate disaster prob

    #dataset = self._filter_dataset(dataset)
    probabilities = {
                disaster: 1 / len(dataset.disasters) for disaster in dataset.disasters
            }



    #Let's derfine our dictionary to store all the dictionaries

    solutions: dict[SolutionTags, Solution] = {}

    #First we construct the chance each distaster will occur
    probabilities = {
                disaster: 1 / len(dataset.disasters) for disaster in dataset.disasters
            }

    #Now we need to create our cost matrix to tell the solver how much each thing will 
    #reguire from out budget

    #To do this we will iterate over every item in our dataset and return the designated item
    cost_matrices={}
    for key, value in dataset.distance.items():
        match objective:
            case SolverObjective.Cost:
                aa = item.weight * value.cost_per_ton

            case SolverObjective.Time:
                aa = value.time

            case SolverObjective.Distance:
                aa = value.distance
        cost_matrices[key]=aa


    #Now we find the inventory in a nice formate
    inventory = {
                depot: dataset.inventory.get((depot, item), 0)
                for depot in dataset.depots
                if self.parameters.expand_depot_set
                or dataset.inventory.get((depot, item), 0) > 0
            }


    #Check that there is inventory
    if sum(inventory.values()) == 0:
        return None


    #Now we get the demand for each item

    #One of the settings we can tweak, need to look more at this
    source = (
            dataset.monthly_demand
            if self.parameters.care_about_month_demand
            else dataset.general_demand
        )

    #After the setting is tweeked, we now make the dictionary
    demand={
            location: source.get((location, item), 0)
            for disaster in dataset.disasters
            for location in disaster.impacted_locations
        }

    # Solve models for all objectives 
    for objective in self.parameters.optimization_objectives:
        #Check all stratigies for each objective
        for strategy in self.parameters.allocation_strategies:
            problem = Problem( #from another file
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

    #self._solver = StochasticSolver()
