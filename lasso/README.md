# Shrinkage Methods: The Lasso

## Motivation

For regression problems, the standard linear model is often used to describe the relationship between a response variable and a set of features. In fact, when applied to real-world problems, it is usually competitive in relation to non-linear methods. However, it may fall short when dealing with problems that have few observations with respect to the number of features considered. Particularly, and provided that the true relationship is approximately linear:

- If the number of observations n is much larger than the number of features d, i.e. n >> d, then the Ordinary Least Squares (OLS) estimation will tend to have low variance. Hence, the linear model will perform well on unseen data.
- If n is not much larger that d, then there can be a lot of variability in the fitting process, resulting in overfitting and thus a poor performance on new observations.
- If n < d, there is no longer a unique solution to the OLS algorithm, as the variance is infinite.

Use-cases that commonly have few observations per feature include:

- Genome-scale data analysis.
- Clinical trials.
- Destructive testing.
- Analysis of production systems under abnormal conditions.

To exacerbate this, oftentimes some or many features may not be associated with the response, and including them would only increase the complexity of the resulting model. This notebook will present the Least Absolute Shrinkage and Selection Operator, better known as the Lasso, a technique that has gained a lot of traction because of its ability to deal with both issues.

## Proposed Solution

A Quadratic Programming (QP) formulation that finds the weight estimates for the Lasso.

## Key Features of the Solution

- Minimization of the training Residual Sum of Squares (RSS).
- Cross-validation and random search to select the budget for the L1-norm of the weight vector.
- Benchmark against scikit-learn's implementations of the Lasso.

## Added Value

This approach is amenable to the specification of additional linear constraints, such as:

- Enforcing group sparcity among features.
- Limiting pairwise multicollinearity.
- Limiting global multicollinearity.
- Considering a fixed set of nonlinear transformations.

## HTML Example URL

https://gurobi.github.io/modeling-examples/lasso/lasso.html


Copyright © 2019 Gurobi Optimization, LLC
