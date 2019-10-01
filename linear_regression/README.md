# Best Subset Selection: L0-Regression

## Motivation

Linear regression was invented at the beginning of the XIX century and today, after more than 200 years, it is still used extensively in practical applications for description and prediction purposes:

- In econometrics, it is useful to estimate the price elasticity of a particular product by regressing sales revenue on price and possibly other features such as demographic, competitor and retail information.
- In health sciences, it can be applied to predict how long a patient will remain, i.e. length of stay, in the ER of a hospital based on patient information, triage assessment, medical test results and date/time of arrival.
- In social sciences, it may shed light on future academic performance of students, so proactive measures can be taken to improve their learning.

In general, linear regression is used to model the relationship between a continuous variable and other explanatory variables, which can be either continuous or categorical. When applying this technique, finding the subset of features that maximizes its perfomance is often of interest.

## Proposed Solution

A Mixed Integer Quadratic Programming (MIQP) formulation that finds the weight estimates for a linear regression problem, where exactly 's' of those weights must be nonzero.

## Key Features of the Solution

- Minimization of the training Residual Sum of Squares (RSS).
- Cross-validation and grid search to select how many features to include in the model.
- Benchmark against scikit-learn's implementations of Ordinary Least Squares (OLS) Regression and the Lasso.

## Added Value

It is shown that, unlike the Lasso, L0-Regression is scale invariant and does not add bias to the weight estimates. Furthermore, this approach is amenable to the specification of additional linear constraints, such as:

- Enforcing group sparcity among features.
- Limiting pairwise multicollinearity.
- Limiting global multicollinearity.
- Considering a fixed set of nonlinear transformations.

## Success Stories

Bertsimas et. al. (2016) successfully applied mathematical programming to solve the best-subset-selection problem for linear regression.

## HTML Example URL

https://gurobi.github.io/modeling-examples/linear_regression/L0-regression.html


Copyright © 2019 Gurobi Optimization, LLC
