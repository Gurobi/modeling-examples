# Customer Assignment Problem

## Motivation

Many companies in various industries must, at some point, make strategic decisions about where to build facilities to support their operations. For example:

- Producers of goods need to decide how to design their supply chains – which encompass factories, distribution centers, warehouses, and retail stores.
- Healthcare providers need to determine where to build hospitals to maximize their population coverage.

These are strategic decisions that are difficult to implement and costly to change because they entail long-term 
investments. Furthermore, these decisions have a significant impact, both in terms of customer satisfaction and cost 
management. One of the critical factors to consider in this process is the location of the customers that the company is 
planning to serve.

This modeling example is at the intermediate level, where we assume that you know Python and are familiar with the 
Gurobi Python API. In addition, you should have some knowledge about building mathematical optimization models.

## Proposed Solution

A mathematical model that selects the optimal placement of facilities (from a set of candidate locations) in order to minimize the distance between the company's facilities and the customers.

## Key Features of the Solution

- Application of the k-means algorithm to pre-process the customer location data.
- Deployment of a Binary Integer Program.

## Added Value

It is shown how machine learning can be leveraged to cope with big datasets.

## Licensing

In order to run this Jupyter Notebook properly, you must have a Gurobi license. If you do not have one, you can request an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.

## HTML Example URL

https://gurobi.github.io/modeling-examples/customer_assignment/customer_assignment.html


Copyright © 2020 Gurobi Optimization, LLC
