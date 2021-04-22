# Column Generation for the Cutting Stock Problem

This model is an example of the cutting stock problem. The Cutting Stock Problem deals with the problem of cutting 
stock material with the same, fixed width — such as paper rolls — into smaller pieces, according to a set of orders 
specifying both the widths and the demand requirements, so as to minimize the amount of wasted material. 
This problem is formulated as an integer programming problem using the Gurobi Python API and solved with a
decomposition technique called Delayed Column Generation using the Gurobi Optimizer.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and 
that you have advanced knowledge of building mathematical optimization models. Typically, the objective function 
and/or constraints of these examples are complex or require advanced features of the Gurobi Python API.

https://gurobi.github.io/modeling-examples/colgen-cutting_stock/colgen-cutting_stock.html

## Download the Repository

You can download the repository containing this and other examples 
by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip). 

## Gurobi License


In order to run this Jupyter Notebook properly, you must have a Gurobi license. If you do not have one, you can request 
an 
[evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=3PW&utm_medium=OT&utm_campaign=WW-MU-OGS-OR-O_LEA-PR_NO-Q3_FY20_WW_JPME_standard-pooling_COM_EVAL_GITHUB_&utm_term=standard-pooling-problem&utm_content=C_JPM) 
as a *commercial user*, or download a 
[free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=3PW&utm_medium=OT&utm_campaign=WW-MU-OGS-OR-O_LEA-PR_NO-Q3_FY20_WW_JPME_standard-pooling_ACADEMIC_EVAL_GITHUB_&utm_term=standard-pooling-problem&utm_content=C_JPM) 
as an *academic user*.

Copyright © 2020 Gurobi Optimization, LLC
