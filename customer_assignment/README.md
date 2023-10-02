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

## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/customer_assignment/customer_assignment.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC