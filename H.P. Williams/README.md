# Modeling Examples

We know many people like to start out by looking for examples of models that, even though not exact to their situation, give them a starting point that they can work from to build their own model.

One of the best books we’ve come across to help people think about how to model is the fifth edition of Model Building in Mathematical Programming, by H.P. Williams. You can find it on Amazon.com here.

However, the book does not actually show you the code required to build the example models. As a result, we have created implementations in Python using Gurobi for many of the examples. Our goal is to have you use the H.P. Williams book to learn more about how to think about modeling, and especially models addressing your particular needs, and then use the resources on these pages to better understand how to implement those models in Python using Gurobi.

As a result, while not including the overview information in the H.P. Williams book, each of the examples we’ve listed below includes:

- Problem description
- Model formulation
- Python implementation
- Gurobi output and analysis

Please note: these examples should be viewed as beta at this point. Feel free to read the information and try them out. Your feedback on what could be clearer, done better, or is missing/should be added is appreciated.

---
## Food Manufacture I
This model is an example of a blending problem. In blending optimization problems, multiple raw materials are combined in a way the meets the stated constraints for the lowest cost.

https://gurobi.github.io/ME-projects/H.P.%20Williams/food_manufacture_1.html

---
## Food Manufacture II
This model extends the Food Manufacture I example above to include new constraints that change the problem from a fairly easy to solve linear programming model to an mixed integer model that is harder to solve.

https://gurobi.github.io/ME-projects/H.P.%20Williams/food_manufacture_2.html

---
## Factory Planning I
This model is an example of a production planning problem. In product planning problems the goal is to create an optimal production plan to maximize profit.

https://gurobi.github.io/ME-projects/H.P.%20Williams/factory_planning_1.html

---
## Factory Planning II
This model extends the Factory Planning I example above to add complexity whereby the month where each machine is down will, instead of being fixed, be determined as a part of the optimized plan.

https://gurobi.github.io/ME-projects/H.P.%20Williams/factory_planning_2.html

---
## Farm Planning
This model is an example of a multi-period production planning problem. In this case the application is to optimize the operation of a farm over 5 years.

https://gurobi.github.io/ME-projects/H.P.%20Williams/farm_planning.html

---
## Manpower Planning
This model is an example of a staffing problem. In staffing planning problems, choices must be made regarding the recruitment, training, redundancy (retention) and scheduling of staff.

https://gurobi.github.io/ME-projects/H.P.%20Williams/manpower_planning.html

---
## Mining
This model is an example of a production problem. In production planning problems, choices must be made regarding the what resources to use to produce what products.

https://gurobi.github.io/ME-projects/H.P.%20Williams/mining.html

---
## Refinery
This model is an example of a production problem. In production planning problems, choices must be made regarding the what resources to use to produce what products.

https://gurobi.github.io/ME-projects/H.P.%20Williams/refinery.html


Copyright © 2019 Gurobi Optimization, LLC
