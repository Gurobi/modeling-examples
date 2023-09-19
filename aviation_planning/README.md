# Airline Planning After Flight Disruption

Weather events are a major threat to the airline industry. The unpredictable nature of snowstorms, heavy rains, and icy runways make it difficult for aviation planners to make accurate schedules.

This notebook walks through the optimization problem of deciding which flights to operate and which flights to cancel after a weather disruption. We do this by constructing a mathematical optimization model that reduces the revenue lost from the cancelled flights. In this example, we are using real data in France compiled by [Amadeus](https://amadeus.com/en).

This modeling tutorial is at the introductory level, where we assume that you know Python and that you have a background on a discipline that uses quantitative methods.

You may find it helpful to refer to the documentation of the [Gurobi Python API](https://www.gurobi.com/documentation/current/refman/py_python_api_overview.html).

## Access via Google Colab

https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/aviation_planning/airlineplanning_gcl.ipynb

## HTML Example URL

https://gurobi.github.io/modeling-examples/aviation_planning/airlineplanning.html



## Licensing

You can download the repository containing this and other examples 
by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip). 
In order to run this Jupyter Notebook properly, you must have a Gurobi license. 
If you do not have one, you can request 
an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) 
as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.


Copyright © 2020 Gurobi Optimization, LLC
