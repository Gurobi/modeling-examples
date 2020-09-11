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

https://gurobi.github.io/modeling-examples/curve_fitting/curve_fitting.html


## Licensing

You can download the repository containing this and other examples 
by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip). 
In order to run this Jupyter Notebook properly, you must have a Gurobi license. 
If you do not have one, you can request 
an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) 
as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.


Copyright © 2020 Gurobi Optimization, LLC

