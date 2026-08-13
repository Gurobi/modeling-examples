# After-Hours HVAC Dispatch

## Objective and Prerequisites

An HVAC shop that advertises after-hours / emergency service still loses jobs when the night call hits voicemail. This notebook assigns a small on-call technician crew to after-hours jobs with time windows, so the shop captures the leak instead of hoping the caller waits until morning.

You will formulate a compact assignment MIP with Gurobi Python API that stays inside the size-limited `pip install gurobipy` license (well under 2,000 variables and constraints).

This modeling example is at the **beginner** level.

Motivating application: after-hours missed-call recovery for HVAC/plumbing shops ([AfterHours Ops](https://github.com/IgorGanapolsky/ai-operations-agency)). The notebook is a self-contained teaching model, not a product demo and not a license upsell.

## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/afterhours_hvac_dispatch/afterhours_hvac_dispatch.ipynb)

----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC
