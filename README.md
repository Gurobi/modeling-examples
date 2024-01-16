[![Gurobi](assets/img/gurobi-light.png)](https://www.gurobi.com)

## Target audience
Data scientists, engineers, computer scientists, economists, and in general, professionals with a background in mathematical modeling and a basic knowledge of Python.

## Goals of modeling examples
+ Illustrate the broad applicability of mathematical optimization.
+ Show how to build mathematical optimization models.

These modeling examples are coded using the Gurobi Python API and distributed as Jupyter Notebooks.

These modeling examples illustrate important capabilities of the Gurobi Python API, including adding decision variables, building linear expressions, adding constraints, and adding an objective function.
They touch on more advanced features such as generalized constraints, piecewise-linear functions, and multi-objective hierarchical optimization.  They also illustrate common constraint types such as “allocation constraints”, “balance constraints”, “sequencing constraints”, “precedence constraints”, and others.

The examples are from different business purposes and reflect different levels of building mathematical optimization models.

## Introductory examples

The introductory examples walk you through the process of building a mathematical optimization model.
The basic requirements are that you know Python and have a background in a discipline that uses quantitative methods.

- [GDD 2023: Intro to Gurobipy:](gurobi_days_digital_2023/intro_to_gurobipy)
  This tutorial was given at the Gurobi Days Digital 2023. It is an introduction to the Gurobi Python API Gurobipy. It walks you through the basics of Gurobipy and explains its usage with some small examples.
- [Intro to Mathematical Optimization Modeling:](milp_tutorial)
  This tutorial discusses the basics of mathematical modeling on the example of a simple assignment problem.
- [Optimization 101:](optimization101)
  This tutorial is based on the Webinar on [Optimization 101 for Data Scientists](https://www.gurobi.com/events/optimization-101-for-data-scientists/) and consists of two modeling sessions with exercises and questions as well as a discussion of a use case. 
- The following examples discuss the input data and the optimization model step by step in a very detailed way
  - [Airline Planning After Flight Disruption](aviation_planning)
  - [Music Recommendation](music_recommendation)
  - [Text Dissimilarity](text_dissimilarity)
  - [Power Generation](power_generation)


## Beginner Examples

The notebooks at the beginner level assume you know Python and have some knowledge about building mathematical optimization models.

- [3D Tic-Tac-Toe:](3d_tic_tac_toe)
  This example will show you how a binary programming model can be used to capture simple logical constraints.
- [Cell Tower:](cell_tower_coverage)
  In this example, you will learn how to define and solve a covering-type problem, namely,
  how to configure a network of cell towers to provide signal coverage to the largest number of people.
- [Curve Fitting:](curve_fitting)
  Try this Jupyter Notebook Modeling Example to learn how you can fit a function to a set of observations. 
- [Facility Location:](facility_location)
  In this example, we will show you how to tackle a facility location problem that involves determining the number and location of warehouses that are needed to supply a group of supermarkets.
- [Fantasy Basketball:](fantasy_basketball)
  This example combines machine learning and optimization modeling in fantasy basketball.
- [Food Program:](food_program)
  Transporting food in a global transportation network is a challenging undertaking. In this notebook, we will build an optimization model to set up a food supply chain based on real data from the UN World Food Program.
- [Market Sharing:](market_sharing)
  In this example, we will show you how to solve a goal programming problem that involves allocating the retailers to two divisions of a company in order to optimize the trade-offs of several market-sharing goals. 
- [Marketing Campaign Optimization:](marketing_campaign_optimization)
  Companies across almost every industry are looking to optimize their marketing campaigns. In this Jupyter Notebook, we will explore a marketing campaign optimization problem that is common in the banking and financial services industry, which involves determining which products to offer to individual customers in order to maximize total expected profit while satisfying various business constraints. 
- [Offshore Wind Farming:](offshore_wind_farming)
  In this example, we will learn how to solve an offshore wind power generation problem. The goal of the problem is to figure out which underwater cables should be laid to connect an offshore wind farm power network at a minimum cost. 
- [Supply Network Design 1:](supply_network_design)
  Try this Jupyter Notebook Modeling Example to learn how to solve a classic supply network design problem that involves finding the minimum cost flow through a network. We will show you how – given a set of factories, depots, and customers – you can use mathematical optimization to determine the best way to satisfy customer demand while minimizing shipping costs.
  In part 2, we additionally determine which depots to open or close in order to minimize overall costs.


## Intermediate Examples

Examples at the intermediate level assume that you know Python and are familiar with the Gurobi Python API. In addition, you should have knowledge about building mathematical optimization models.

- [Agricultural Pricing:](agricultural_pricing)
  Try this example to learn how to use mathematical optimization to tackle a common, but critical agricultural pricing problem: Determining the prices and demand for a country’s dairy products in order to maximize total revenue derived from the sales of those products. You will learn how to model this problem as a quadratic optimization problem using the Gurobi Python API and solve it using the Gurobi Optimizer.
- [Linear Regression:](linear_regression)
  In this example, you will learn how to perform linear regression with feature selection using mathematical programming. We will show you how to construct a mixed-integer quadratic programming (MIQP) model of this linear regression problem.
- [Car Rental:](car_rental)
  This notebook will teach you how you can use mathematical optimization to figure out how many cars a car rental company should own and where they should be located every day to maximize weekly profits.
  Part 2 considers an extension on how mathematical optimization can be used to figure out in which locations a car rental company should expand repair capacity.
- [Customer Assignment:](customer_assignment)
  This notebook is an intermediate version of the facility location problem. In addition, we show how machine learning can be used in the pre-processing so as to reduce the computational burden of big datasets. 
- [Economic Planning:](economic_planning)
  In this example, you will discover how mathematical optimization can be used to address a macroeconomic planning problem that a country may face. The goal is to determine different possible growth patterns for the economy.
- [Efficiency Analysis:](efficiency_analysis)
  How can mathematical optimization be used to measure the efficiency of an organization? Find out in this example, where you will learn how to formulate an Efficiency Analysis model as a linear programming problem.
- [Electrical Power Generation:](electrical_power_generation)
  This model is an example of an electrical power generation problem (also known as a unit commitment problem). It selects an optimal set of power stations to turn on in order to satisfy anticipated power demand over a 24-hour time horizon.
  In part 2, the model is extended and adds the option of using hydroelectric power plants to satisfy demand.
- [Factory Planning:](factory_planning)
  In this example, we create an optimal production plan that maximizes profits.
  In part 2, we create an optimal production plan that will not only maximize profits but also determine the months in which to perform maintenance operations on the machines.
- [Food Manufacturing:](food_manufacturing)
  You will learn how to create an optimal multi-period production plan for a product that requires a number of ingredients – each of which has different costs, restrictions, and features. 
  In part 2,  additional constraints are considered that change the problem type from a linear program (LP) problem to a mixed-integer program (MIP) problem, making it harder to solve.
- [Logical Design:](logical_design)
  In this example, you will learn how to solve a logical design problem, which involves constructing a circuit using the minimum number of NOR gates (devices with two inputs and one output) that will perform the logical function specified by a truth table.
- [Mining:](mining)
  In this example, you will learn how to model and solve a multi-period production planning problem that involves optimizing the operations of a group of mines over a five-year period.
- [Opencast Mining:](opencast_mining)
  This notebook shows a mathematical optimization problem to identify which excavation locations to choose in order to maximize the gross margins of extracting ore.
- [Power Generation:](power_generation)
  Assume that we know the set of all available power plants and the demand for power for each hour of a day. We want to create a schedule to decide how much power each plant should generate, and when to switch the plants “on” and “off” in order to minimize the overall costs.
- [Refinery:](refinery)
  This model is an example of a production planning problem where decisions must be made regarding which products to produce and which resources to use.
- [Technician Routing and Scheduling:](technician_routing_scheduling)
  Try this modeling example to discover how mathematical optimization can help telecommunications firms automate and improve their technician assignment, scheduling, and routing decisions in order to ensure the highest levels of customer satisfaction.
  You will learn how to formulate a multi-depot vehicle routing problem with time windows 
  constraints.

## Advanced Examples

For modeling examples at the advanced level, we assume that you know Python and the Gurobi Python API and that you have advanced knowledge of building mathematical optimization models. Typically, the objective function and/or constraints of these examples are complex or require advanced features of the Gurobi Python API.

- [Constraint Optimization:](constraint_optimization)
  In this example, we consider a constraint of an integer programming model where all the decision variables in the constraint are binary, the goal is to find another constraint involving the same binary variables that is logically equivalent to the original constraint, but that has the smallest possible absolute value of the right-hand side. 
- [Decentralization Planning:](decentralization_planning)
  This model is an advanced version of a facility location problem. Given a set of departments of a company and potential cities where these departments can be located, we want to determine the "best" location of each department in order to maximize gross margins.
- [Farm Planning:](farm_planning)
  This is an example of an advanced production planning problem. 
- [Lost Luggage Distribution:](lost_luggage_distribution)
  This is an example of a vehicle routing problem with time windows. It involves helping a company figure out the minimum number of vans required to deliver pieces of lost or delayed baggage to their rightful owners and determining the optimal assignment of vans to customers.
- [Manpower Planning:](manpower_planning)
  This notebook solves a staffing planning problem where choices must be made regarding recruitment, training, redundancy, and scheduling of staff.
- [Milk Collection:](milk_collection)
  This is an example of a capacitated vehicle routing problem.
  With only one tanker truck with limited capacity, you will need to determine the best possible route for the tanker to take to collect milk every day from a set of farms.
- [Portfolio Selection Optimization:](portfolio_selection_optimization)
  This model is an example of the classic Markowitz portfolio selection optimization model. We want to find the fraction of the portfolio to invest among a set of stocks that balances risk and return. It is a Quadratic Programming (QP) model with vector and matrix data for returns and risk, respectively. 
- [Pooling:](pooling)
  Companies across numerous industries – including petrochemical refining, wastewater treatment, and mining – use mathematical optimization to solve the pooling problem.
  This problem can be regarded as a generalization of the minimum-cost flow problem and the blending problem. 
- [Protein Comparison:](protein_comparison)
  You will learn how to model the protein comparison problem as a quadratic assignment problem. It involves measuring the similarities of two proteins.
- [Protein Folding:](protein_folding)
  The problem pertains to a protein, which consists of a chain of amino acids. The objective is to predict the optimum folding of the chain.
- [Traveling Salesman:](traveling_salesman)
  This notebook covers one of the most famous combinatorial optimization problems in existence: the Traveling Salesman Problem (TSP). The goal of the TSP – to find the shortest possible route that visits each city once and returns to the original city – is simple, but solving the problem is a complex and challenging endeavor. This example uses the [callback](https://www.gurobi.com/documentation/current/refman/py_cb_s.html) feature of Gurobi.
- [Workforce Scheduling:](workforce)
  In this notebook, we demonstrate how you can use mathematical optimization to generate an optimal workforce schedule that minimizes the number of temporary workers your company needs to hire and maximizes employee fairness. The problem is formulated as a multi-objective mixed-integer-programming (MIP) model and uses the [multiple objectives feature](https://www.gurobi.com/documentation/current/refman/multiple_objectives.html) of Gurobi.
- [Yield Management:](yield_management)
  In this example, we will show you how an airline can use AI technology to devise an optimal seat pricing strategy. You will learn how to formulate this Yield Management Problem as a three-period stochastic programming problem.

## Examples via Business Needs

<details>  
  <summary>Automation</summary>
  <!--All you need is a blank line-->

  <ul>
    <li><a href="marketing_campaign_optimization">Marketing Campaign Optimization</a> (beginner)</li>
    <li><a href="supply_network_design">Supply Network Design</a> (beginner)</li>
    <li><a href="technician_routing_scheduling">Technician Routing and Scheduling</a> (intermediate)</li>
    <li><a href="manpower_planning">Manpower Planning</a> (advanced)</li>
    <li><a href="workforce">Workforce Scheduling</a> (advanced) </li>
  </ul>
</details>

<details>
  <summary>Customer Management</summary>
  <!--All you need is a blank line-->

  <ul>
    <li><a href="supply_network_design">Supply Network Design</a> (beginner)</li>
    <li><a href="covid19_facility_location">Covid19 Facility Optimization</a> (beginner)</li>
    <li><a href="yield_management">Yield Management</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Forecasting</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="price_optimization">Price Optimization</a> (introductory)</li>
    <li><a href="music_recommendation">Music Recommendation</a> (introductory)</li>
    <li><a href="fantasy_basketball">Fantasy Basketball</a> (beginner)</li>
    <li><a href="covid19_facility_location">Covid19 Facility Optimization</a> (beginner)</li>
    <li><a href="agricultural_pricing">Agricultural Pricing</a> (intermediate)</li>
    <li><a href="linear_regression">Linear Regression</a> (intermediate)</li>
  </ul>
</details>

<details>
<summary>Inventory Optimization</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="price_optimization">Price Optimization</a> (introductory)</li>
    <li><a href="food_program">Food Program</a> (beginner)</li>
    <li><a href="car_rental">Car Rental</a> (intermediate)</li>
    <li><a href="economic_planning">Economic Planning</a> (intermediate)</li>
    <li><a href="factory_planning">Factory Planning</a> (intermediate)</li>
    <li><a href="food_manufacturing">Food Manufacturing</a> (intermediate)</li>
    <li><a href="farm_planning">Farm Planning</a> (advanced)</li>
  </ul>
</details>  

<details>
<summary>Location Planning</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="cell_tower_coverage">Cell Tower</a> (beginner)</li>
    <li><a href="facility_location">Facility Location</a> (beginner)</li>
    <li><a href="car_rental">Car Rental</a> (intermediate)</li>
    <li><a href="customer_assignment">Customer Assignment</a> (intermediate)</li>
    <li><a href="opencast_mining">Opencast Mining</a> (intermediate)</li>
    <li><a href="decentralization_planning">Decentralization Planning</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Logistics</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="price_optimization">Price Optimization</a> (introductory)</li>
    <li><a href="supply_network_design">Supply Network Design</a> (beginner)</li>
    <li><a href="food_program">Food Program</a> (beginner)</li>
    <li><a href="traveling_salesman">Traveling Salesman</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Marketing</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="music_recommendation">Music Recommendation</a> (introductory)</li>
    <li><a href="marketing_campaign_optimization">Marketing Campaign Optimization</a> (beginner)</li>
    <li><a href="customer_assignment">Customer Assignment</a> (intermediate)</li>
  </ul>
</details>

<details>
<summary>Network Optimization</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="aviation_planning">Airline Planning After Flight Disruption</a> (introductory)</li>
    <li><a href="food_program">Food Program</a> (beginner)</li>
    <li><a href="supply_network_design">Supply Network Design</a> (beginner)</li>
  </ul>
</details>

<details>
<summary>Operations</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="aviation_planning">Airline Planning After Flight Disruption</a> (introductory)</li>
    <li><a href="price_optimization">Price Optimization</a> (introductory)</li>
    <li><a href="covid19_facility_location">Covid19 Facility Optimization</a> (beginner)</li>
    <li><a href="power_generation">Power Generation</a> (intermediate)</li>
  </ul>
</details>

<details>
<summary>Portfolio Management</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="portfolio_selection_optimization">Portfolio Selection Optimization</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Production</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="economic_planning">Economic Planning</a> (intermediate)</li>
    <li><a href="efficiency_analysis">Efficiency Analysis</a> (intermediate)</li>
    <li><a href="electrical_power_generation">Electrical Power Generation</a> (intermediate)</li>
    <li><a href="factory_planning">Factory Planning</a> (intermediate)</li>
    <li><a href="food_manufacturing">Food Manufacturing</a> (intermediate)</li>
    <li><a href="mining">Mining</a> (intermediate)</li>
    <li><a href="power_generation">Power Generation</a> (intermediate)</li>
    <li><a href="refinery">Refinery</a> (intermediate)</li>
    <li><a href="farm_planning">Farm Planning</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Research</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="curve_fitting">Curve Fitting</a> (beginner)</li>
    <li><a href="linear_regression">Linear Regression</a> (intermediate)</li>
    <li><a href="efficiency_analysis">Efficiency Analysis</a> (intermediate)</li>
    <li><a href="constraint_optimization">Constraint Optimization</a> (intermediate)</li>
  </ul>
</details>

<details>
<summary>Resource</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="price_optimization">Price Optimization</a> (introductory)</li>
    <li><a href="economic_planning">Economic Planning</a> (intermediate)</li>
    <li><a href="electrical_power_generation">Electrical Power Generation</a> (intermediate)</li>
    <li><a href="power_generation">Power Generation</a> (intermediate)</li>
    <li><a href="food_manufacturing">Food Manufacturing</a> (intermediate)</li>
    <li><a href="farm_planning">Farm Planning</a> (advanced)</li>
    <li><a href="yield_management">Yield Management</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Routing</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="food_program">Food Program</a> (beginner)</li>
    <li><a href="technician_routing_scheduling">Technician Routing and Scheduling</a> (intermediate)</li>
    <li><a href="lost_luggage_distribution">Lost Luggage Distribution</a> (advanced)</li>
    <li><a href="milk_collection">Milk Collection</a> (advanced)</li>    
    <li><a href="traveling_salesman">Traveling Salesman</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Sales Optimization</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="price_optimization">Price Optimization</a> (introductory)</li>
    <li><a href="marketing_campaign_optimization">Marketing Campaign Optimization</a> (beginner)</li>
    <li><a href="customer_assignment">Customer Assignment</a> (intermediate)</li>
    <li><a href="food_manufacturing">Food Manufacturing</a> (intermediate)</li>
  </ul>
</details>

<details>
<summary>Supply Chain</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="market_sharing">Market Sharing</a> (beginner)</li>
    <li><a href="supply_network_design">Supply Network Design</a> (beginner)</li>
    <li><a href="food_program">Food Program</a> (beginner)</li>
    <li><a href="power_generation">Power Generation</a> (intermediate)</li>
    <li><a href="traveling_salesman">Traveling Salesman</a> (advanced)</li>
  </ul>
</details>

<details>
<summary>Allocation/Scheduling</summary>
<!--All you need is a blank line-->

  <ul>
    <li><a href="technician_routing_scheduling">Technician Routing and Scheduling</a> (intermediate)</li>
    <li><a href="manpower_planning">Manpower Planning</a> (advanced)</li>
    <li><a href="traveling_salesman">Traveling Salesman</a> (advanced)</li>
    <li><a href="workforce">Workforce Scheduling</a> (advanced)</li>
  </ul>
</details>


It is also possible to browse through the examples w.r.t. difficulty level and business needs on the [Gurobi website](https://www.gurobi.com/jupyter_models/).


## Run on Google Colab

You can access all the examples in Google Colab, which is a free, online Jupyter Notebook environment that allows you to write and execute Python code through your browser. You will need to be signed into a Google account to execute the notebooks. 
But you do not need an account if you just want to look at the notebooks.
For each example, the respective colab link is given in the readme:
+ To run the example the first time, choose “Runtime” and then click “Run all”.
+ All the cells in the Jupyter Notebook will be executed.
+ The example will install the gurobipy package. The Gurobi
  pip package includes a size-limited trial license equivalent to the Gurobi "online course" license. For most of the notebooks, this restricted license is sufficient to run them. For others, you will need a full license, see the license section below.
+ You can also modify and re-run individual cells.
+ For subsequent runs, choose “Runtime” and click “Restart and run all”.
+ The Gurobi Optimizer will find the optimal solution of the modeling example.
Check out the [Colab Getting Started Guide](https://colab.research.google.com/notebooks/intro.ipynb#scrollTo=GJBs_flRovLc) for full details on how to use Colab Notebooks as well as create your own.

## Run locally

- Clone the repository containing all examples or download it
by clicking [here](https://github.com/Gurobi/modeling-examples/archive/refs/heads/master.zip)
- [Start Jupyter Notebook Server](https://docs.jupyter.org/en/latest/running.html#id2)
- Open the particular notebook in Jupyter Notebook. 
- The notebook will install the gurobipy package and other dependencies. The Gurobi
  pip package includes a size-limited trial license equivalent to the Gurobi "online course" license. For most of the notebooks, this restricted license is sufficient. For others, you will need a full license.

## Licensing

In order to run the Jupyter Notebooks you will need a Gurobi license. Most of the notebooks can be run using the "online course" license version of Gurobi. This is a limited license and restricts the number of allowed variables and constraints. This restricted license comes also with the gurobipy package when installing it via pip or conda.
You can also request a full license, i.e., an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/) as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/) as an *academic user*. The latter two license types allow you to run all notebooks.
All licenses can also be requested in the [Gurobi User Portal](https://portal.gurobi.com/iam/licenses/request/) after [registering for a Gurobi account](https://portal.gurobi.com/iam/register/).

## Download the repository

You can download the repository containing all examples by clicking [here](https://github.com/Gurobi/modeling-examples/archive/master.zip). 


## Index of modeling examples

- [3D Tic-Tac-Toe](3d_tic_tac_toe)
- [Airline Planning After Flight Disruption](aviation_planning)
- [Agricultural Pricing](agricultural_pricing)
- [Burrito Game](burrito_optimization_game)
- [Car Rental](car_rental)
- [Cell Tower](cell_tower_coverage)
- [Cutting Stock](colgen-cutting_stock)
- [Constraint Optimization](constraint_optimization)
- [Covid19 Facility Optimization](covid19_facility_location)
- [Curve Fitting](curve_fitting)
- [Customer Assignment](customer_assignment)
- [Decentralization Planning](decentralization_planning)
- [Drone Network](drone_network)
- [Economic Planning](economic_planning)
- [Efficiency Analysis](efficiency_analysis)
- [Electrical Power Generation](electrical_power_generation)
- [Facility Location](facility_location)
- [Factory Planning](factory_planning)
- [Fantasy Basketball](fantasy_basketball)
- [Farm Planning](farm_planning)
- [Food Manufacturing](food_manufacturing)
- [Food Program](food_program)
- [GDD 2023: Intro to Gurobipy](gurobi_days_digital_2023/intro_to_gurobipy)
- [Intro to Mathematical Optimization Modeling / MILP Tutorial](milp_tutorial)
- [Linear Regression](linear_regression)
- [Logical Design](logical_design)
- [Lost Luggage Distribution](lost_luggage_distribution)
- [Manpower Planning](manpower_planning)
- [Market Sharing](market_sharing)
- [Marketing Campaign Optimization](marketing_campaign_optimization)
- [Milk Collection](milk_collection)
- [Mining](mining)
- [Music Recommendation](music_recommendation)
- [Offshore Wind Farming](offshore_wind_farming)
- [Opencast Mining](opencast_mining)
- [Optimization 101](optimization101)
- [Pooling](pooling)
- [Portfolio Selection Optimization](portfolio_selection_optimization)
- [Power Generation](power_generation)
- [Price Optimization](price_optimization)
- [Protein Comparison](protein_comparison)
- [Protein Folding](protein_folding)
- [Refinery](refinery)
- [Supply Network Design](supply_network_design)
- [Technician Routing and Scheduling](technician_routing_scheduling)
- [Text Dissimilarity](text_dissimilarity)
- [Traveling Salesman](traveling_salesman)
- [Workforce Scheduling](workforce)
- [Yield Management](yield_management)

These modeling examples are distributed under the Apache 2.0 license <br>
© Gurobi Optimization, LLC
