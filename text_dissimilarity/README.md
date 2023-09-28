# Text Dissimilarity Using Linear Programming

In this notebook, we will walk-through a unique example demonstrating how you can apply optimization to assess text dissimilarity. There are numerous potential applications such as in detecting plagiarism, information retrieval, clustering, text categorization, topic detection, question answer session, machine translation and text summarization.

The Word Mover’s Distance (WMD) is a popular measure of text similarity, which measures the semantic distance between two documents. In this notebook, we will achieve two goals:

Given two text passages, model WMD as an optimization problem and compute it
Examine a plagiarized passage from a book, then find the original passage in that book that has the closest semantic meaning to the given passage
This modeling tutorial is at the introductory level, where we assume that you know Python and that you have a background on a discipline that uses quantitative methods.

You may find it helpful to refer to the documentation of the [Gurobi Python API](https://www.gurobi.com/documentation/current/refman/py_python_api_overview.html).


## View the notebook

[Google Colab Link](https://colab.research.google.com/github/Gurobi/modeling-examples/blob/master/text_dissimilarity/text_dissimilarity.ipynb)


----
For details on licensing or on running the notebooks, see the overview on [Modeling Examples](../)

© Gurobi Optimization, LLC