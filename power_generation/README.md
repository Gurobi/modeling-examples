# Optimize a Power Generation Schedule

Suppose that we are in charge of generating power for the U.S. State of Georgia. Assume that we know the set of all available power plants and the demand for power for each hour of a day. Can we create a schedule to decide how much power each plant should generate, and when to switch the plants “on” and “off”? How can we do so while minimizing the overall costs?

In this notebook, we model this decision-making problem using mathematical optimization. In this power generation problem, the objective is to minimize the overall costs. The decision variables model the power generation schedule. The constraints capture basic requirements such as ensuring that the power supply meets the demand, as well as practical limitations such as the minimum and maximum production levels for each power plant. By finding the optimally cost-efficient schedule, this model helps power plant operators get the best output from their facilities while minimizing the overall costs.

This modeling tutorial is at the introductory level, where we assume that you know Python and that you have a background on a discipline that uses quantitative methods.

You may find it helpful to refer to the documentation of the [Gurobi Python API](https://www.gurobi.com/documentation/current/refman/py_python_api_overview.html).



## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/power_generation/optimize_power_schedule.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC