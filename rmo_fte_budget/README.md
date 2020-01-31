# Resource Management Optimization 
## Introduction to resources management
A professional service organization provides an extensive range of services , for example

* information technology outsourcing 
* business process outsourcing 
* accounting, 
* legal, 
* advertising, 
* and other specialized services.

## Limitations of resources management tools and procesess
Current labor resources management processes and tools present the following limitations:

* Staffing is done in a decentralized way.
* There is uncertainty in the availability of both: resources and jobs.
* Manual allocation of jobs to resources are done by queries where jobs are satisfied on First-In/First-filled bases.
* The un-matched jobs remain un-matched unless a resources manager manually searches for resources to fill the positions.
* These limitations lead to:
    + Poor demand fulfillment and low labor resource utilization
    + High project delivery costs
    + Poor customer satisfaction
	
## Resource management goals

The main goals of resource management are:

* Increase labor resources utilization
* Reduce overall labor costs
* Optimize the matching of job requirements with employees qualifications

The fundamental problem of resource management is to provide workforce resources:

* With the right skills and capabilities
* For the right job
* At the right time, location, and cost

 ## Problem description
Consider a professional service organization that has an important project to staff. This project has a set  of jobs that need to be filled by qualified labor resources. Each job needs a given amount  of qualified resources and a set of requirements defined by technology (skill and capabilities), role, job level, etc. Similarly, each resource has qualifications defined in terms of  technology (skill and capabilities), role, and job level. Also, the resource has a capacity available to fill a job.

The amount of resource required by a job is defined in FTE (Full Time Equivalent) units, and measures the amount of effort required to perform a job. 

A matching score for resources and jobs is calculated based on how well the qualifications of a resource matches the requirements of a job, in terms of technology (skill and capabilities), role, job level, etc.

If the capacity of a resource is not completely allocated, the remaning capacity not allocated is declared as idle capacity.   

In addition, if not enough internal resources are available, new resources can be hired. There is a fixed cost of hiring one resource of each type of job. Finally, there is a hiring budget that limits the number of new resources that can be hired. Also, jobs can have different priority. This job priority is considered to decide for which jobs we need to hire new resources, whenever there is not enough budget limiting the number of new resources we can hire. For the jobs that we could not hire, a gap is declared.

The goal is to find an allocation of resources to jobs that maximizes the total matching score of resources and jobs, while satisfying jobs’ FTE requirements,  resources capacity constraints, and budget for hiring.

## What you will learn
* You will learn how to formulate the resource management problem as a mixed integer programming (MIP) model, called resource matching optimization, using the Gurobi Python API
* The resource matching optimization model has logical constraints to induce the proper behavior for the hiring variables, conequently you will learn how to use indicator (binary) variables and logical constraints to ensure that you hire the appropriate number of new resources and allocate the appropriate amount capacity to fill jobs FTE requirements.
* You will also learn how to create how KPIs (Key Performance Metrics) that allows to compare different sceanario.

## Licensing

In order to run this Jupyter Notebook properly, you must have a Gurobi license. If you do not have one, you can request an [evaluation license](https://www.gurobi.com/downloads/request-an-evaluation-license/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=CommercialDataScience) as a *commercial user*, or download a [free license](https://www.gurobi.com/academia/academic-program-and-licenses/?utm_source=Github&utm_medium=website_JupyterME&utm_campaign=AcademicDataScience) as an *academic user*.

## HTML Example URL

https://gurobi.github.io/modeling-examples/rmo_fte_budget/rmo_fte_hire_budget.html
