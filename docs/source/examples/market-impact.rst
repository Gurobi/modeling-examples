Market Impact Costs
===================

.. image:: thumbnails/market-impact.jpg
   :width: 600
   :align: center
   :alt: Market Impact Costs

|

Large trades move the market against you. Gurobi prices that effect into a portfolio rebalancing model.
---------------------------------------------------------------------------------------------------------

Trading a large position shifts the price you end up paying. A standard way to
capture this is to charge a cost that grows with the traded volume raised to a
power greater than one, which makes it cheaper to spread a trade over several
smaller ones. The resulting budget constraint is nonlinear.

The notebook rebalances a portfolio of 462 stocks, maximizing expected return
subject to a variance budget while the market impact costs eat into the
available capital. Because every unit traded is penalized, the solution never
buys and sells the same stock, even though nothing explicitly forbids it.

Access the Jupyter Notebook Modeling Example
--------------------------------------------

The examples will be published as Google Colab notebooks, a free online Jupyter
Notebook environment that allows you to write and execute Python code through
your browser.

.. note::

   Placeholder: the Colab link for
   ``notebooks/market_impact/market_impact.ipynb`` will be added here once the
   notebooks are published.

.. include:: _how-to-run.rst
