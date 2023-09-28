# Standard Pooling Problem

## Motivation

The Pooling Problem is a challenging problem in the petrochemical refining, wastewater treatment and mining industries. 
This problem can be regarded as a generalization of the minimum-cost flow problem and the blending problem. 
It is indeed important because of the significant savings it can generate, so it comes as no surprise that it has been 
studied extensively since Haverly pointed out the non-linear structure of this problem in 1978.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and 
that you have advanced knowledge of building mathematical optimization models. Typically, the objective function and/or 
constraints of these examples are complex or require advanced features of the Gurobi Python API.

## Proposed Solution

Two alternative formulations based on Bilinear Programming, a subclass of non-convex Quadratic Programming problems, are presented, namely:

- P-formulation (concentration).
- Q-formulation (proportion).

## Key Features of the Solution

- Deployment of Bilinear Programs.
- Optimization based on Spatial Branch and Bound (sB&B).
- Benchmark run on an instance of the Standard Pooling Problem to compare the performance of the formulations mentioned above.

## Added Value

It is shown that solving Bilinear Programs with Gurobi is as easy as configuring a single global parameter. The dramatic difference in performance of alternative formulations is also highlighted.


## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/pooling/std_pooling.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC