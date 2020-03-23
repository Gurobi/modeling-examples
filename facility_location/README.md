# Facility Location

## Objective and Prerequisites

In this example, we will solve a facility location problem where we want to build warehouses to supply a certain number 
of supermarkets. We will construct a mixed-integer programming (MIP) model of this problem, implement this model in the 
Gurobi Python interface, and compute an optimal solution.

This modeling example is at the beginner level, where we assume that you know Python and that you have some knowledge 
about building mathematical optimization models.

## Motivation

The study of facility location problems -also known as location analysis- is a branch of operations research and 
computational geometry concerned with the optimal placement of facilities to minimize transportation costs while 
considering factors like avoiding placing hazardous materials near housing, and the location of  competitors' 
facilities.

The Fermat-Weber problem, formulated in the 17'th century, was one of the first facility location problems ever proposed. 
The Fermat-Weber problem can be described as follows: Given three points in a plane, find a fourth point such that the 
sum of its distances to the three given points is minimal. This problem can be interpreted as a version of the facility 
location problem, where the assumption is made that the transportation costs per distance are the same for all 
destinations.

Facility location problems have applications in a wide variety of industries. For supply chain management and logistics, 
this problem  can be used to find the optimal location for stores, factories, warehouses, etc. Other applications range 
from public policy (e.g. positioning  police officers in a city), telecommunications (e.g. cell towers in a network), 
and even particle physics (e.g. separation distance between repulsive charges). Another application of the facility 
location problem is to determine the locations for natural gas transmission equipment. Finally, facility location 
problems can be applied to cluster analysis.

## Problem Description

A large supermarket chain in the UK needs to build warehouses for a set of supermarkets it is opening in Northern 
England. The locations of the supermarkets have been decided, but the locations of the warehouses have yet to be 
determined.

Several good candidate locations for the warehouses have been identified, but decisions must be made regarding 
how many warehouses to open and at which candidate locations to build them.

Opening many warehouses would be advantageous as this would reduce the average distance a truck has to drive from the 
warehouse to the supermarket, and hence reduce the delivery cost. However, opening a warehouse has a fixed cost 
associated with it.

In this example, our goal is to find the optimal tradeoff between delivery cost and the cost of building new facilities.

## Proposed Solution

A mixed-integer programming (MIP) formulation for the facility location problem.


## Licensing

In order to run this Jupyter Notebook properly, you must have a valid Gurobi license. If you do not have one, you can request 
an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) 
as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) 
as an *academic user*.

## HTML Example URL

https://gurobi.github.io/modeling-examples/facility_location/facility_location.html


Copyright © 2020 Gurobi Optimization, LLC
