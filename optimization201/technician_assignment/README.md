# Technician Assignment With Mathematical Optimization

## Problem
You are consulting for a telecom company that dispatches technicians to perform various tasks for customers, 
ranging from equipment installations and setups to repairs. Considering various constraints such as:
- Technician availability
- Skillset matching
- Customer time window
- Service priority
- Start and return of technicians to the central depot
- Limited resources/vans

The goal is to decide:
- Which technicians are assigned to which customers and in what sequence?
- How to allocate the limited resources, ensuring each technician has access to a van?

We use a two-step solution approach, using Mathematical Optimization (MO) in both, to solve this problem.

## Repo Guide
- The first model is called _Technician Routing_ where we decide which technicians are assigned to which customers 
and in what sequence. This model is described and solved in the [technician_routing](technician_routing.ipynb) notebook.
- The second model is called _Resource Assignment_ where we decide which technicians should be assigned to which vans.
  This model is described and solved in the `resource_assignment` notebook. 
  - There are two versions of this notebook: a partial version ([resource_assignment](resource_assignment.ipynb)) 
    that can be used for teaching, and one with the complete description, formulation, and the code ([resource_assignment_complete](resource_assignment_complete.ipynb)). 
- The [data-Sce0.xlsx](data-Sce0.xlsx) is the input used for the _Technician Routing_ model.
- The [routes.csv](routes.csv) and [orders.csv](orders.csv) are the outputs of _Technician Routing_ model 
  and are used as inputs for the _Resource Assignment_ model. Of course, you can run the `technician_routing` notebook and 
  or even modify it as you please to get new results. Ensure the format of the output is similar
  in case you like to use the `resource_assignment` notebook afterward.

The model size is intentionally small to ensure even those without access to Gurobi license can run the model 
(check out [License Requirement](#license-requirement) section for more info about the license).

## Google Colab
If you like to access the notebooks in Google Colab, click: 
- [technician_routing](https://colab.research.google.com/github/decision-spot/technician_assignment/blob/main/technician_routing.ipynb)
- [resource_assignment](https://colab.research.google.com/github/decision-spot/technician_assignment/blob/main/resource_assignment_complete.ipynb)

Note that you must sign in with a Google account to be able to run the code in Colab.

## License Requirement
The problem is modeled using Gurobi Python API. So, a Gurobi license is required to run this model.
If you don't have a license, you can request a free commercial evaluation license 
or a free academic license [here](https://www.gurobi.com/downloads/).
The data used in the models is small enough to run the model with gurobi restricted license
(available via `pip install gurobi` as shown in the notebook).