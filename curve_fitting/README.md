# Curve Fitting

This Jupyter Notebook describes an example of fitting a function to a set of observations. A quantity y is known to 
depend on another quantity x. A set of corresponding values have been collected for y and x. We want to identify 
a function of x that explains the values of y. This problem is formulated as a linear programming problem using 
the Gurobi Python API and solved with the Gurobi Optimizer.

This model is example 11 from the fifth edition of Model Building in Mathematical Programming, by H. Paul Williams on 
pages 266 and 319-320.

This modeling example is at the beginner level, where we assume that you know Python and that you have some knowledge 
about building mathematical optimization models. The reader should also consult the 
[documentation](https://www.gurobi.com/resources/?category-filter=documentation) 
of the Gurobi Python API.

## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/curve_fitting/curve_fitting.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC