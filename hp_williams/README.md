# Examples from “Model Building in Mathematical Programming” by H. Paul Williams

## Modeling Examples

We know many people like to start out by looking for examples of models that, even though not exact to their situation, give them a starting point that they can work from to build their own model.

One of the best books we have come across to help people think about how to model is the fifth edition of Model Building in Mathematical Programming, by H.P. Williams.

However, the book does not actually show you the code required to build the example models. As a result, we have created implementations in Python using Gurobi for many of the examples. Our goal is to have you use the H.P. Williams book to learn more about how to think about modeling, and especially models addressing your particular needs, and then use the resources on these pages to better understand how to implement those models in Python using Gurobi.

As a result, while not including the overview information in the H.P. Williams book, each of the examples we’ve listed below includes: 

- Problem description
- Model formulation
- Python implementation
- Gurobi output and analysis

## Contents

---
### Food Manufacture I
This model is an example of a blending problem. In blending optimization problems, multiple raw materials are combined 
in a way the meets the stated constraints for the lowest cost.

This modeling example is at the intermediate level, where we assume that you know Python and are familiar with the 
Gurobi Python API. In addition, you should have some knowledge about building mathematical optimization models.

https://gurobi.github.io/modeling-examples/hp_williams/food_manufacture_1.html

---
### Food Manufacture II
This model extends the Food Manufacture I example above to include new constraints that change the problem from a 
fairly easy to solve linear programming model to an mixed integer model that is harder to solve.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and 
that you have advanced knowledge of building mathematical optimization models. Typically, the objective function 
and/or constraints of these examples are complex or required advanced features of the Gurobi Python API.

https://gurobi.github.io/modeling-examples/hp_williams/food_manufacture_2.html

---
### Factory Planning I
This model is an example of a production planning problem. In such problems, the goal is to create an 
optimal production plan to maximize profit.

This modeling example is at the intermediate level, where we assume that you know Python and are familiar with 
the Gurobi Python API. In addition, you should have some knowledge about building mathematical optimization models.

https://gurobi.github.io/modeling-examples/hp_williams/factory_planning_1.html

---
### Factory Planning II
This model extends the Factory Planning I example above to add complexity whereby the month where each machine is 
down will, instead of being fixed, be determined as a part of the optimized plan.

This modeling example is at the intermediate level, where we assume that you know Python and are familiar with 
the Gurobi Python API. In addition, you should have some knowledge about building mathematical optimization models.

https://gurobi.github.io/modeling-examples/hp_williams/factory_planning_2.html

---
### Farm Planning
This model is an example of a multi-period production planning problem. In this case the application is to optimize 
the operation of a farm over 5 years.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and that 
you have advanced knowledge of building mathematical optimization models. Typically, the objective function and/or 
constraints of these examples are complex or required advanced features of the Gurobi Python API.

https://gurobi.github.io/modeling-examples/hp_williams/farm_planning.html

---
### Manpower Planning
This model is an example of a staffing problem. In staffing planning problems, choices must be made regarding the 
recruitment, training, redundancy (retention) and scheduling of staff.

This modeling example is at the advanced level, where we assume that you know Python and the Gurobi Python API and 
that you have advanced knowledge of building mathematical optimization models. Typically, the objective function 
and/or constraints of these examples are complex or required advanced features of the Gurobi Python API.

https://gurobi.github.io/modeling-examples/hp_williams/manpower_planning.html

---
### Mining
This model is an example of a production problem. In production planning problems, choices must be made regarding the 
what resources to use to produce what products.

This modeling example is at the intermediate level, where we assume that you know Python and are familiar with the 
Gurobi Python API. In addition, you should have some knowledge about building mathematical optimization models.

https://gurobi.github.io/modeling-examples/hp_williams/mining.html

---
### Refinery
This model is an example of a production problem. In production planning problems, choices must be made regarding the 
what resources to use to produce what products.

This modeling example is at the intermediate level, where we assume that you know Python and are familiar with the 
Gurobi Python API. In addition, you should have some knowledge about building mathematical optimization models.

https://gurobi.github.io/modeling-examples/hp_williams/refinery.html

## Licensing

In order to run these Jupyter Notebooks properly, you must have a Gurobi license. If you do not have one, you can request an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.

Copyright © 2020 Gurobi Optimization, LLC

