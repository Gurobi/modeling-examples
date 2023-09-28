# Offshore Wind Farming

## Objective and Prerequisites

In this example, we will solve the problem of how to minimize the cost of laying underwater cables to collect 
electricity produced by an offshore wind farm. We will construct a mixed-integer programming (MIP)  model of this 
problem, implement this model in the Gurobi Python interface, and compute an optimal solution.

This modeling example is at the beginner level, where we assume that you know Python and that you have some 
knowledge about building mathematical optimization models.

## Motivation

Global climate change has already had observable effects on the environment. Glaciers have shrunk, ice on rivers and 
lakes is breaking up earlier than expected, plant and animal species have  been affected and trees are flowering sooner 
than expected. The potential future effects of global climate change include more frequent wildfires, longer periods of 
drought in some regions and an increase in the number, duration and intensity of tropical storms.

Climate change mitigation consists of actions to limit the magnitude or rate of global warming and its related 
effects. The first challenge for climate change mitigation is eliminating the burning of coal, oil and, eventually, 
natural gas. This is perhaps the most daunting challenge as denizens of richer nations literally eat, wear, work, 
play and even sleep on the products made from fossil fuels. Also, citizens of developing nations want and arguably 
deserve the same comforts. There are no perfect solutions for reducing dependence on fossil fuels (for example, 
carbon neutral biofuels can drive up the price of food and lead to forest destruction, and while nuclear power does 
not emit greenhouse gases, it does produce radioactive waste). Other alternatives include plant-derived plastics, 
biodiesel, and wind power.

Offshore wind power is the use of wind farms constructed in bodies of water, usually in the ocean, to harvest wind 
energy to generate electricity. Higher wind speeds are available offshore compared to on land, so offshore wind 
power’s electricity generation is higher per amount of capacity installed. 

The advantage of locating wind turbines offshore is that the wind is much stronger off the coasts, and unlike wind 
over the continent, offshore breezes can be strong in the afternoon, matching the time when people are using the 
most electricity. Offshore turbines can also be located close to the load centers along the coasts, such as large 
cities, eliminating the need for new long-distance transmission lines.

## Problem Description

An offshore wind farm is a collection of wind turbines placed at sea to take advantage of the strong offshore winds. 
These strong winds produce more electricity, but offshore wind farms are more expensive to install and operate than 
those on land.

We will use a MIP model to reduce part of the cost of building an offshore wind farm. We will compute a plan for how 
to lay the underwater cables that connect the turbines. These cables are necessary to transfer the power produced by 
the turbines to land. The plan we compute will minimize the cost to install the underwater cables, while ensuring that 
each turbine is connected to the shore and each cable has sufficient capacity to handle the electrical current generated.

In our example, a wind farm is being built off the west coast of Denmark. There is a power station on the coast where 
all the electricity must be transferred to be distributed to the electric grid. There are also transfer stations in the 
wind farm where the power from several turbines can be collected and transferred along a single cable to the shore.

There are two factors we must consider when installing the cables. First, there is a fixed cost to lay a cable on 
the sea floor. This cost is proportional to the distance between the two stations the cable connects. Second, 
we must consider how much current will flow through the cables. Connections that carry large currents need thick 
cables. Thick cables are more expensive than thin cables.

The goal of this optimization problem is to decide which cables should be laid to connect the wind farm power network 
at a minimum cost.

The model of offshore wind farming optimization problem is an instance of a more general optimization model known 
as fixed charge network flow problem. Fixed charge network flow problems can be applied to a large number of business 
problems -for example, in the planning of communication and transport networks.

## Proposed Solution

A mixed-integer programming (MIP) formulation for the offshore wind farming problem.


## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/offshore_wind_farming/offshore_wind_farming.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC