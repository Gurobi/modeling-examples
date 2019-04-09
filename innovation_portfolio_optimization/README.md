# Innovation Portfolio Optimization Modeling Example

## Motivation
Project and innovation Portfolio Optimization is a problem that is prevalent in many 
industries. For example

* Major global IT organizations have hundreds of IT projects impacting hundreds of applications. Typically, the budget for this global IT organizations are in the billions of dollars.
* Major consulting and service providers need to manage a complex pipeline of clients’ project opportunities.
* Fortune 500 global companies need to manage a complex funnel of technology innovation opportunities.
* U.S county, state, and federal government organizations need to manage billions of dollars in projects that 
benefit U.S tax payers.

Project and innovation Portfolio Optimization is an extremely difficult problem to solve. There are an astronomical 
number of combinations to select and schedule projects optimally within the scarce and limited resources available. 
In addition, there are several conflicting business objectives to be considered when creating a portfolio; 
consequently, there is a need to optimize the trade-offs between these conflicting objectives. Traditionally, 
the “optimization” of a portfolio is a very manual and time-consuming process, typically producing sub-optimal 
results that lead to waste and delays in projects and processes.


## Problem statement
How to optimize the selection and scheduling of a portfolio of projects such that the trade-offs among various 
conflicting business objectives are optimized, while satisfying resource constraints (e.g. labor availability and 
budgets) and other business constraints (e.g. project precedence constraints) ?

## What you will learn

* You will learn how to formulate the innovation portfolio optimization (IPO) problem as a mixed integer programming 
(MIP) problem using the Gurobi Python API
* You will learn how to use gurobipy.multidict method to transform a dictionary into a set of dictionaries. 
* IPO is formulated as a multi-objective MIP, conequently you will learn how to configure the model objective method 
"Model.setObjectiveN() that allows to handle multiple objectives hierarchically.

## Instructions

