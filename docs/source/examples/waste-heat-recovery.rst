Waste-Heat Recovery
===================

.. image:: thumbnails/waste-heat-recovery.jpg
   :width: 600
   :align: center
   :alt: Waste-Heat Recovery

|

A bigger heat exchanger recovers more waste heat but costs more to build. Gurobi finds the design with the lowest total cost.
--------------------------------------------------------------------------------------------------------------------------------

A hot waste stream can preheat a cold process stream through a counter-current
heat exchanger, with an auxiliary heater covering whatever duty the exchanger
cannot supply. The driving force of the exchanger is the log-mean temperature
difference, and both the capital cost and the heater efficiency are nonlinear
in the design variables.

The notebook sizes the exchanger, decides how much of each stream to route
through it and sets the auxiliary duty, minimizing capital plus fuel cost while
meeting the required process duty and a minimum approach temperature. It also
shows how to move from a fast local solution to a globally optimal one.

Access the Jupyter Notebook Modeling Example
--------------------------------------------

The examples will be published as Google Colab notebooks, a free online Jupyter
Notebook environment that allows you to write and execute Python code through
your browser.

.. note::

   Placeholder: the Colab link for
   ``notebooks/waste_heat_recovery/waste_heat_recovery.ipynb`` will be added
   here once the notebooks are published.

.. include:: _how-to-run.rst
