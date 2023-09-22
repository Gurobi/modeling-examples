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

- [GDD 2023: Intro to Gurobipy:](gurobi_days_digital_2023/intro_to_gurobipy)
  This tutorial was given at the Gurobi Days Digital 2023. It is an introduction to the Gurobi Python API Gurobipy. It walks you through the basics of Gurobipy and explains the usage with some small examples.
- [Intro to Mathematical Optimization Modeling:](intro_to_modeling/README.md)
  This tutorial discusses the basics of mathematical mopdeling on the example of a simple assignment problem.
- [Optimization 101:](optimization101/README.md)
  This tutorial is based on the Webinar on [Optimization 101 for Data Scientists](https://www.gurobi.com/events/optimization-101-for-data-scientists/) and consists of two modeling sessions with exercises and questions as well as a discussion of a use case. 
- The following examples dicusses the input data and the optimization model step by step in a very detailed way
  - [Aviation Planning](aviation_planning/README.md)
  - [Music Recommendation](music_recommendation/README.md)
  - [Text Dissimilarity](text_dissimilarity/README.md)
  - [Power Generation](power_generation/README.md)


### Beginner Examples

The notebooks at beginner level assume you know Python and have some knowledge about building mathematical optimization models.
- [3D Tic-Tac-Toe:](3d_tic_tac_toe/README.md)
  This example will show you how a binary programming model can be used to capture simple logical constraints.
- [Cell Tower:](cell_tower_coverage/README.md)
  In this example, you will learn how to define and solve a covering type problem, namely,
  how to configure a network of cell towers to provide signal coverage to the largest number of people.
- [Curve Fitting](curve_fitting/README.md)
  Try this Jupyter Notebook Modeling Example to learn how you can fit a function to a set of observations. 
- [Facility Location:](facility_location/README.md)
  In this example, we will show you how to tackle a facility location problem that involves determining the number and location of warehouses that are needed to supply a group of supermarkets.
- [Fantasy Basketball:](fantasy_basketball_1_2/README.md)
  This example combines machine learning and optimization modeling in fantasy basketball.
- [Market Sharing:](market_sharing/README.md)
  In this example, we will show you how to solve a goal programming problem that involves allocating the retailers to two divisions of a company in order to optimize the trade-offs of several market sharing goals. 
-

It is also possible to browse through the examples w.r.t. difficulty level and business needs on the [Gurobi website](https://www.gurobi.com/jupyter_models/).

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
an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/) 
as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/) as an *academic user*.
All licenses can also be requested in the [Gurobi User Portal](https://portal.gurobi.com/iam/licenses/request/) after [registering for a Gurobi account](https://portal.gurobi.com/iam/register/).

## Download the repository

You can download the repository containing all examples by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip). 

## Index of modeling examples

- [3D Tic-Tac-Toe](3d_tic_tac_toe/README.md)
- [Agricultural Pricing](agricultural_pricing/README.md)
- [Aviation Planning](aviation_planning/README.md)
- [Burrito Game](burrito_optimization_game/README.md)
- [Car Rental](car_rental_1_2/README.md)
- [Cell Tower](cell_tower_coverage/README.md)
- [Cutting Stock](colgen-cutting_stock/README.md)
- [Constraint Optimization](constraint_optimization/README.md)
- [Covid19 Facility Optimization](covid19_facility_location/README.md)
- [Curve Fitting](curve_fitting/README.md)
- [Customer Assignment](customer_assignment/README.md)
- [Decentralization Planning](decentralization_planning/README.md)
- [Drone Network](drone_network_1_2/README.md)
- [Economic Planning](economic_planning/README.md)
- [Efficiency Analysis](efficiency_analysis/README.md)
- [Electrical Power Generation](electrical_power_generation_1_2/README.md)
- [Facility Location](facility_location/README.md)
- [Factory Planning](factory_planning_1_2/README.md)
- [Fantasy Basketball](fantasy_basketball_1_2/README.md)
- [Farm Planning](farm_planning/README.md)
- [Food Manufacturing](food_manufacturing_1_2/README.md)
- [Food Program](food_program/README.md)
- [GDD 2023: Intro to Gurobipy](gurobi_days_digital_2023/intro_to_gurobipy/README.md)
- [Intro to Mathematical Optimization Modeling](intro_to_modeling/README.md)
- [Linear Regression](linear_regression/README.md)
- [Logical Design](logical_design/README.md)
- [Lost Luggage Distribution](lost_luggage_distribution/README.md)
- [Manpower Planning](manpower_planning/README.md)
- [Market Sharing](market_sharing/README.md)
- [Marketing Campaign Optimization](marketing_campaign_optimization/README.md)
- [Milk Collection](milk_collection/README.md)
- [MILP Tutorial](milp_tutorial/README.md)
- [Mining](mining/README.md)
- [Music Recommendation](music_recommendation/README.md)
- [Offshore Wind Farming](offshore_wind_farming/README.md)
- [Opencast Mining](opencast_mining/README.md)
- [Price Optimization](price_optimization/README.md)
- [Optimization 101](optimization101/README.md)
- [Pooling](pooling/README.md)
- [Portfolio Selection Optimization](portfolio_selection_optimization/README.md)
- [Power Generation](power_generation/README.md)
- [Price Optimization](price_optimization/README.md)
- [Protein Comparison](protein_comparison/README.md)
- [Protein Folding](protein_folding/README.md)
- [Refinery](refinery/README.md)
- [Supply Network Design](supply_network_design_1_2/README.md)
- [Technician Routing and Scheduling](technician_routing_scheduling/README.md)
- [Text Dissimilarity](text_dissimilarity/README.md)
- [Traveling Salesman](traveling_salesman/README.md)
- [Workforce Scheduling](workforce/README.md)
- [Yield Management](yield_management/README.md)

These modeling examples are distributed under the Apache 2.0 license, (c) copyright 2019 Gurobi Optimization, LLC
