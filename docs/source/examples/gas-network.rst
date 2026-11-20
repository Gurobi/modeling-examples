Gas Network Flows
=================

.. image:: thumbnails/gas-network.jpg
   :width: 600
   :align: center
   :alt: Gas Network Flows

|

Gas can travel either way through a pipe. Gurobi captures the Weymouth pressure-drop law in both directions without a single binary variable.
----------------------------------------------------------------------------------------------------------------------------------------------

Gas transport networks are governed by the Weymouth equation, which relates the
pressure drop along a pipe to the square of the flow through it. Because the
direction of flow is itself a decision, this relation is usually modelled with
binary variables and a disjunction. The sign-power function avoids that
entirely and keeps the model continuous.

The notebook builds a three-node network — a supply node, a junction and a
demand node — connected by two pipes, and maximizes the demand that can be
delivered subject to pressure limits. The pipes are deliberately oriented
against the expected direction of flow, so the optimal flows come out negative.

Access the Jupyter Notebook Modeling Example
--------------------------------------------

The examples will be published as Google Colab notebooks, a free online Jupyter
Notebook environment that allows you to write and execute Python code through
your browser.

.. note::

   Placeholder: the Colab link for ``notebooks/gas_network/gas_network.ipynb``
   will be added here once the notebooks are published.

.. include:: _how-to-run.rst
