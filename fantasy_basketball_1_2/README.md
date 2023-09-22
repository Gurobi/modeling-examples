# Fantasy Basketball 

Fantasy sports has turned into a mainstream activity over the last ten to twenty years with leagues now working with popular fantasy sports sites as official partners. If you’re not familiar with fantasy sports, the goal is to select players from a slate of real games to fill out a virtual lineup.

The player’s selected then have their performance converted to fantasy points, So for example a basketball player’s points, rebounds, assists and turnovers will produce a single fantasy point value. The highest overall total is used to determine winners of large competitions. In short, you want to pick your dream team.

But it’s not so easy as just picking the best players as each one is given a salary value and your lineup’s total salary can’t exceed a given value (the salary cap). Your lineup also must satisfy position constraints which makes selecting a lineup a little more difficult.

This example begins with NBA box score data to build a supervised machine learning model that predicts players fantasy point output for a single days games.
Those predictions are then used in an optimization model that will select the optimal team consisting of one player from each of the five main positions. 

The second part expands the optimization model to reflect actual fantasy basketball competitions, shows different ways to model constraints, and 
introduces the *slack* of a constraint.

## Access via Google Colab

Part1: 
https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/fantasy_basketball_1_2/fantasy_basketball_part1_gcl.ipynb

Part2:
https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/fantasy_basketball_1_2/fantasy_basketball_part2_gcl.ipynb

## HTML Example URL

Part1: 
https://gurobi.github.io/modeling-examples/fantasy_basketball_1_2/fantasy_basketball_part1.html

Part2: 
https://gurobi.github.io/modeling-examples/fantasy_basketball_1_2/fantasy_basketball_part2.html


----
For details on licensing or on running the notebooks, see the [Modeling Examples Overview/Readme](https://github.com/Gurobi/modeling-examples/)<br>
This notebook can be ran using the "online course" version of Gurobi.


Copyright © 2022 Gurobi Optimization, LLC
