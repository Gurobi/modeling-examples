# Gurobi modeling examples

## Introduction: 

### Target audience:
Data scientists, engineers, computer scientists, economists, and in general, professionals with a background in mathematical modeling and a basic knowledge of Python.

### Goals of modeling examples:
+ Illustrate the broad applicability of mathematical optimization.
+ Show how to build mathematical optimization models.

These modeling examples are coded using the Gurobi Python API and distributed as Jupyter Notebooks.

These modeling examples illustrate important capabilities of the Gurobi Python API, including adding decision 
variables, building linear expressions, adding constraints, and adding an objective function.
They touch on more advanced features such as generalized constraints, piecewise-linear functions, and 
multi-objective hierarchical optimization.  They also illustrate common constraint types such as “allocation constraints”, 
“balance constraints”, “sequencing constraints”, “precedence constraints”, and others.

## How to use the modeling examples

The examples are from different business purposes and reflect different levels on building mathematical optimization models.

### Introductory examples

The introductory examples walk you through the process of building a mathematical optimization model.
The basic requirements are that you know Python and have a background in a discipline that used quantitative methods.

- [GDD 2023: Intro to Gurobipy](https://github.com/Gurobi/modeling-examples/tree/master/gurobi_days_digital_2023/intro_to_gurobipy)
  This tutorial was given at the Gurobi Days Digital 2023. It is an introduction to the Gurobi Python API Gurobipy. It walks you through the basics of Gurobipy and explains the usage with some small examples.
- [Intro to Mathematical Optimization Modeling](https://github.com/Gurobi/modeling-examples/tree/master/intro_to_modeling)
  This tutorial discusses the basics of mathematical mopdeling on the example of a simple assignment problem.
- [Optimization 101](https://github.com/Gurobi/modeling-examples/tree/master/optimization101)
  This tutorial is based on the Webinar on [Optimization 101 for Data Scientists](https://www.gurobi.com/events/optimization-101-for-data-scientists/) and consists of two modeling sessions with exercises and questions as well as a discussion of a use case. 
- The following examples dicusses the input data and the optimization model step by step in a very detailed way
  - [Aviation Planning](https://github.com/Gurobi/modeling-examples/tree/master/aviation_planning)
  - [Music Recommendation](https://github.com/Gurobi/modeling-examples/tree/master/music_recommendation)
  - [Text Dissimilarity](https://github.com/Gurobi/modeling-examples/tree/master/text_dissimilarity)
  - [Power Generation](https://github.com/Gurobi/modeling-examples/tree/master/power_generation)


It is also possible to browse through the examples w.r.t. difficulty level and business needs on the [Gurobi website](https://www.gurobi.com/jupyter_models/?_sft_difficulty_level=introductory).

## How to run the examples on Google Colab

You can access all the examples in Google Colab, which is a free, online Jupyter Notebook environment that allows you to write and execute Python code through your browser. You will need to be signed into a Google account to execute the notebooks. For each example the respective colab link is given in the readme:
+ To run the example the first time, choose “Runtime” and then click “Run all”.
+ All the cells in the Jupyter Notebook will be executed.
+ The example will install the gurobipy package, which includes a limited Gurobi license that allows you to solve small models.
+ You can also modify and re-run individual cells.
+ For subsequent runs, choose “Runtime” and click “Restart and run all”.
+ The Gurobi Optimizer will find the optimal solution of the modeling example.
Check out the [Colab Getting Started Guide](https://colab.research.google.com/notebooks/intro.ipynb#scrollTo=GJBs_flRovLc) for full details on how to use Colab Notebooks as well as create your own.

The Google Colab link for each example will be provided on the particular example-readme-page. There, you will also find a html link if you just want to have a look at the model and its description without running it.

## How to run the notebooks locally?

- Clone the repository containing all examples or download it
by clicking [here](https://github.com/Gurobi/modeling-examples/archive/refs/heads/master.zip)
- [Start Jupyter Notebook Server](https://docs.jupyter.org/en/latest/running.html#id2)
- Open the particular notebook in Jupyter Notebook. Use the file with the name that *does not* end in *colab* or *gcl*.
- The notebook will install the gurobipy package and other dependencies. The Gurobi
  pip package includes a size-limited trial license. For some of the notebooks this restricted license is sufficient. For others you will need a full license.

## Licensing

In order to run the Jupyter Notebooks you will need a Gurobi license. Some Notebooks can be ran using the "online course" license version of Gurobi. This is a limited license and restricts the number of allowed variables and constraints. 
You can also request  
an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) 
as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.
All licenses can also be requested in the [Gurobi User Portal](https://portal.gurobi.com/iam/licenses/request/) after [registering for a Gurobi account](https://portal.gurobi.com/iam/register/).

## Download the repository

You can download the repository containing all examples by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip). 

## Index of modeling examples

- [3D Tic-Tac-Toe](https://github.com/Gurobi/modeling-examples/tree/master/3d_tic_tac_toe)
- [Agricultural Pricing](https://github.com/Gurobi/modeling-examples/tree/master/agricultural_pricing)
- [Aviation Planning](https://github.com/Gurobi/modeling-examples/tree/master/aviation_planning)
- [Burrito Game](https://github.com/Gurobi/modeling-examples/tree/master/burrito_optimization_game)
- [Car Rental](https://github.com/Gurobi/modeling-examples/tree/master/car_rental_1_2)
- [Cell Tower](https://github.com/Gurobi/modeling-examples/tree/master/cell_tower_coverage)
- [Cutting Stock](https://github.com/Gurobi/modeling-examples/tree/master/colgen-cutting_stock)
- [Constraint Optimization](https://github.com/Gurobi/modeling-examples/tree/master/)
- [Covid19 Facility Optimization](https://github.com/Gurobi/modeling-examples/tree/master/covid19_facility_location)
- [Curve Fitting](https://github.com/Gurobi/modeling-examples/tree/master/curve_fitting)
- [Customer Assignment](https://github.com/Gurobi/modeling-examples/tree/master/customer_assignment)
- [Decentralization Planning](https://github.com/Gurobi/modeling-examples/tree/master/decentralization_planning)
- [Drone Network](https://github.com/Gurobi/modeling-examples/tree/master/drone_network_1_2)
- [Economic Planning](https://github.com/Gurobi/modeling-examples/tree/master/economic_planning)
- [Efficiency Analysis](https://github.com/Gurobi/modeling-examples/tree/master/efficiency_analysis)
- [Electrical Power Generation](https://github.com/Gurobi/modeling-examples/tree/master/electrical_power_generation_1_2)
- [Facility Location](https://github.com/Gurobi/modeling-examples/tree/master/facility_location)
- [Factory Planning](https://github.com/Gurobi/modeling-examples/tree/master/factory_planning_1_2)
- [Fantasy Basketball](https://github.com/Gurobi/modeling-examples/tree/master/fantasy_basketball_1_2)
- [Farm Planning](https://github.com/Gurobi/modeling-examples/tree/master/farm_planning)
- [Food Manufacturing](https://github.com/Gurobi/modeling-examples/tree/master/food_manufacturing_1_2)
- [Food Program](https://github.com/Gurobi/modeling-examples/tree/master/food_program)
- [GDD 2023: Intro to Gurobipy](https://github.com/Gurobi/modeling-examples/tree/master/gurobi_days_digital_2023/intro_to_gurobipy)
- [Intro to Mathematical Optimization Modeling](https://github.com/Gurobi/modeling-examples/tree/master/intro_to_modeling)
- [Linear Regression](https://github.com/Gurobi/modeling-examples/tree/master/linear_regression)
- [Logical Design](https://github.com/Gurobi/modeling-examples/tree/master/logical_design)
- [Lost Luggage Distribution](https://github.com/Gurobi/modeling-examples/tree/master/lost_luggage_distribution)
- [Manpower Planning](https://github.com/Gurobi/modeling-examples/tree/master/manpower_planning)
- [Market Sharing](https://github.com/Gurobi/modeling-examples/tree/master/market_sharing)
- [Marketing Campaign Optimization](https://github.com/Gurobi/modeling-examples/tree/master/marketing_campaign_optimization)
- [Milk Collection](https://github.com/Gurobi/modeling-examples/tree/master/milk_collection)
- [MILP Tutorial](https://github.com/Gurobi/modeling-examples/tree/master/milp_tutorial)
- [Mining](https://github.com/Gurobi/modeling-examples/tree/master/mining)
- [Music Recommendation](https://github.com/Gurobi/modeling-examples/tree/master/music_recommendation)
- [Offshore Wind Farming](https://github.com/Gurobi/modeling-examples/tree/master/offshore_wind_farming)
- [Opencast Mining](https://github.com/Gurobi/modeling-examples/tree/master/opencast_mining)
- [Price Optimization](https://github.com/Gurobi/modeling-examples/tree/master/price_optimization)
- [Optimization 101](https://github.com/Gurobi/modeling-examples/tree/master/optimization101)
- [Pooling](https://github.com/Gurobi/modeling-examples/tree/master/pooling)
- [Portfolio Selection Optimization](https://github.com/Gurobi/modeling-examples/tree/master/portfolio_selection_optimization)
- [Power Generation](https://github.com/Gurobi/modeling-examples/tree/master/power_generation)
- [Price Optimization](https://github.com/Gurobi/modeling-examples/tree/master/price_optimization)
- [Protein Comparison](https://github.com/Gurobi/modeling-examples/tree/master/protein_comparison)
- [Protein Folding](https://github.com/Gurobi/modeling-examples/tree/master/protein_folding)
- [Refinery](https://github.com/Gurobi/modeling-examples/tree/master/refinery)
- [Supply Network Design](https://github.com/Gurobi/modeling-examples/tree/master/supply_network_design_1_2)
- [Technician Routing and Scheduling](https://github.com/Gurobi/modeling-examples/tree/master/technician_routing_scheduling)
- [Text Dissimilarity](https://github.com/Gurobi/modeling-examples/tree/master/text_dissimilarity)
- [Traveling Salesman](https://github.com/Gurobi/modeling-examples/tree/master/traveling_salesman)
- [Workforce Scheduling](https://github.com/Gurobi/modeling-examples/tree/master/workforce)
- [Yield Management](https://github.com/Gurobi/modeling-examples/tree/master/yield_management)

These modeling examples are distributed under the Apache 2.0 license, (c) copyright 2019 Gurobi Optimization, LLC
