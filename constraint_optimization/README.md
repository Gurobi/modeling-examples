# Constraint Optimization

This model is an example of a constraint optimization problem. Considering a constraint of an integer programming model 
where all the decision variables in the constraint are binary, the goal is to find another constraint involving the same 
binary variables that is logically equivalent to the original constraint, but that has the smallest possible absolute 
value of the right-hand side. This problem is formulated as a linear programming problem using the Gurobi Python API and 
solved with the Gurobi Optimizer.

This model is example 18 from the fifth edition of Model Building in Mathematical Programming, by H. Paul Williams on 
pages 273 and 328-330.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and 
that you have advanced knowledge of building mathematical optimization models. Typically, the objective function 
and/or constraints of these examples are complex or require advanced features of the Gurobi Python API.

## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/constraint_optimization/constraint_optimization.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC