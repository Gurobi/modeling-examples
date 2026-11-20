AC Optimal Power Flow
=====================

.. image:: thumbnails/acopf.jpg
   :width: 600
   :align: center
   :alt: AC Optimal Power Flow

|

Finding the most efficient operating point of an electrical grid means solving the full AC power flow equations. Gurobi handles the trigonometric physics directly.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

The optimal power flow problem determines the voltage magnitudes, voltage angles
and power injections across a network that satisfy demand at minimum cost. The
commonly used DC formulation linearizes the underlying physics; the AC
formulation in this notebook keeps them intact, which makes the problem
nonconvex but far more realistic.

The model is built on a four-bus network containing a swing bus, two load buses
and a generator bus, and minimizes the reactive power drawn at the two
generation buses. The sine and cosine terms are written directly with
``gp.nlfunc``, so the complete power balance fits into two matrix constraints.

Access the Jupyter Notebook Modeling Example
--------------------------------------------

The examples will be published as Google Colab notebooks, a free online Jupyter
Notebook environment that allows you to write and execute Python code through
your browser.

.. note::

   Placeholder: the Colab link for ``notebooks/acopf/acopf_4buses.ipynb`` will
   be added here once the notebooks are published.

.. include:: _how-to-run.rst
