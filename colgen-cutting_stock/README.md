# Column Generation for the Cutting Stock Problem

This model is an example of the cutting stock problem. The Cutting Stock Problem deals with the problem of cutting 
stock material with the same, fixed width — such as paper rolls — into smaller pieces, according to a set of orders 
specifying both the widths and the demand requirements, so as to minimize the amount of wasted material. 
This problem is formulated as an integer programming problem using the Gurobi Python API and solved with a
decomposition technique called Delayed Column Generation using the Gurobi Optimizer.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and 
that you have advanced knowledge of building mathematical optimization models. Typically, the objective function 
and/or constraints of these examples are complex or require advanced features of the Gurobi Python API.

## Access via Google Colab

https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/colgen-cutting_stock/colgen-cutting_stock_gcl.ipynb

## HTML Example URL

https://gurobi.github.io/modeling-examples/colgen-cutting_stock/colgen-cutting_stock.html


----
For details on licensing or on running the notebooks, see the [Modeling Examples Overview/Readme](https://github.com/Gurobi/modeling-examples/)

Copyright © 2020 Gurobi Optimization, LLC
