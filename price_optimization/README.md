# Price Optimization: Parts 1 and 2

This example comes in two parts. **Part 1** contains a full problem description where the goal is to find the price to maximize revenue for selling avocados using a quadratic program. The relationship between price and demand is modeled using linear regression. 

**Part 2** takes advantage of Gurobi's open-source package [Gurobi Machine Learning](https://gurobi-machinelearning.readthedocs.io/en/stable/index.html) which allows the relationship between price and demand to be fit using a `Scikit Learn` object and directly added a constraint to an optimization model.

[Google Colab Link for Part 1](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/price_optimization/price_optimization_gcl.ipynb)

[Google Colab Link for Part 2](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/price_optimization/price_optimization_gurobiML_gcl.ipynb)

## Download the Repository

You can download the repository containing this and other examples by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip).

## Gurobi License
This notebook can be ran using the "online course" version of Gurobi. If you require a full license you can request an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=3PW&utm_medium=OT&utm_campaign=WW-MU-MUI-OR-O_LEA-PR_NO-Q3_FY20_WW_JPME_Yield_Management_COM_EVAL_GitHub&utm_term=Yield%20Management&utm_content=C_JPM) as a commercial user, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=3PW&utm_medium=OT&utm_campaign=WW-MU-EDU-OR-O_LEA-PR_NO-Q3_FY20_WW_JPME_Yield_Management_COM_EVAL_GitHub&utm_term=Yield%20Management&utm_content=C_JPM) as an academic user.

Copyright © 2023 Gurobi Optimization, LLC
