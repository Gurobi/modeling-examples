# Workforce Scheduling Modeling Example

## Motivation
People are the most important asset in the services industry and the largest cost.

Workforce allocation and personnel scheduling deal with the arrangement of work schedules  and the assignment of personnel shifts in order to cover the demand 
for resources that vary over time.

These problems are very important in services industries such as:
* Telephone operators
* Hospital nurses
* Policemen
* Transportation personnel (plane crews, bus drivers)
* Hospitality industry
* Restaurant industry
* etc.

## Problem statement

Consider a service business, like a restaurant, that develops its workforce plans for the next two weeks -considering a (7-day) week. The service requires only 
one set of skills. There are a number of employed workers with the same set of skills and with identical productivity that are available to work on some of the 
days during the two-weeks planning horizon. There is only one shift per workday. Each shift may have different resource (workers) requirements on each workday. 
The service business may hire extra (temp) workers from an agency to satisfy shift requirements. The service business wants to minimize the number of extra 
workers that needs to hire, and as a secondary objective (fairness) it wants to balance the workload of employed workers.

## What you will learn

* You will learn how to formulate the workforce scheduling problem as a mixed integer programming (MIP) problem using the Gurobi Python API
* The workforce scheduling problem is formulated as a multi-objective MIP, conequently you will learn how to configure the model objective 
method "Model.setObjectiveN()" that allows to handle multiple objectives hierarchically.

## Licensing

In order to run this Jupyter Notebook properly, you must have a Gurobi license. If you do not have one, you can request an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.

## HTML Example URL

https://gurobi.github.io/modeling-examples/workforce/workforce_scheduling.html

