This repository contains a beginner-friendly modeling example for battery scheduling using mathematical optimization and Gurobi. The notebook incrementally builds three models of increasing complexity:

- load & PV only,

- battery price arbitrage, and

- an integrated load–generation–storage model with nonlinear battery degradation costs.

The example demonstrates how to formulate, solve, and visualize battery scheduling problems in gurobipy, illustrating key concepts such as energy balance, state-of-charge dynamics, and nonlinear objectives.