# Avovado Price Optimization: Parts 1 and 2

Equipped with good data, the avocado pricing and supply problem is ripe with opportunities for demonstrating the power of optimization and data science. This example demonstrates how predictive and prescriptive analytics can optimize avocado prices to maximize revenue. We will use regression and quadratic programming to achieve this goal. We will demonstrate how to implement this model in the Gurobi Python API, and generate an optimal solution using the Gurobi Optimizer.

This example comes in two parts. **Part 1** contains a full problem description where the goal is to find the price to maximize revenue for selling avocados using a quadratic program. The relationship between price and demand is modeled using linear regression. 

**Part 2** takes advantage of Gurobi's open-source package [Gurobi Machine Learning](https://gurobi-machinelearning.readthedocs.io/en/stable/index.html) which allows the relationship between price and demand to be fit using a `Scikit Learn` object and directly added a constraint to an optimization model.

This modeling tutorial is at the introductory level, where we assume that you know Python and that you have a background on a discipline that uses quantitative methods.

You may find it helpful to refer to the documentation of the [Gurobi Python API](https://www.gurobi.com/documentation/current/refman/py_python_api_overview.html).
This notebook is explained in detail in our webinar on data science and mathematical optimization. You can watch these videos by clicking [here](https://www.youtube.com/watch?v=AJRP9pPBx6s).


## View the notebook

[Google Colab Link - Part 1](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/price_optimization/price_optimization.ipynb)

[Google Colab Link - Part 2](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/price_optimization/price_optimization_gurobiML.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC