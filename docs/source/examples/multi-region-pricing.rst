Multi-Region Pricing
====================

.. image:: thumbnails/multi-region-pricing.jpg
   :width: 600
   :align: center
   :alt: Multi-Region Pricing

|

When demand reacts to price, pricing and volume cannot be decided separately. Gurobi optimizes both at once.
--------------------------------------------------------------------------------------------------------------

Under a constant-elasticity model, demand follows a power law of the price. The
revenue is then the product of two decision variables sitting on top of a
nonlinear demand curve, so the pricing decision and the quantity sold have to
be optimized jointly.

The notebook sets prices for eight products across six regions. Each product
has a limited total supply, shipping to a region costs money, and anything left
unsold is wasted — so the model has to balance margin against the risk of
leaving stock on the shelf.

Access the Jupyter Notebook Modeling Example
--------------------------------------------

The examples will be published as Google Colab notebooks, a free online Jupyter
Notebook environment that allows you to write and execute Python code through
your browser.

.. note::

   Placeholder: the Colab link for
   ``notebooks/multi_region_pricing/multi_region_pricing.ipynb`` will be added
   here once the notebooks are published.

.. include:: _how-to-run.rst
