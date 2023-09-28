# Cell Tower Coverage

## Objective and Prerequisites

In this example, we'll solve a simple covering problem: how to build a network of cell towers to provide signal 
coverage to the largest number of people possible. We'll construct a mathematical model of the business problem, 
implement this model in the Gurobi Python interface, and compute an optimal solution.

This modeling example is at the beginner level, where we assume that you know Python and that you have some knowledge 
about building mathematical optimization models.

## Motivation

Over the last ten years, smartphones have revolutionized our lives in ways that go well beyond how we communicate. 
Besides calling, texting, and emailing, more than two billion people around the world now use these devices to navigate, 
to book cab rides, to compare product reviews and prices, to follow the news, to watch movies, to listen to music, 
to play video games,to take photographs, to participate in social media, and for numerous other applications.

A cellular network is a network of handheld smartphones in which each phone communicates with the telephone network 
by radio waves through a local antenna at a cellular base station (cell tower). One important problem is the placement 
of cell towers to provide signal coverage to the largest number of people.

## Problem Description

A telecom company needs to build a set of cell towers to provide signal coverage  for the inhabitants of a given city. 
A number of potential locations where the towers could be built have been identified. The towers have a fixed range, 
and -due to budget constraints- only a limited number of them can be built. Given these restrictions, the company wishes 
to provide coverage to the largest percentage of the population possible

## Proposed Solution

A mixed-integer programming (MIP) formulation for the Cell Tower Coverage Problem..

## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/cell_tower_coverage/cell_tower.ipynb)

----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC