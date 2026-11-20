Planar Manipulator Trajectory
=============================

.. image:: thumbnails/manipulator.jpg
   :width: 600
   :align: center
   :alt: Planar Manipulator Trajectory

|

Steering a robot arm around an obstacle is a trigonometric problem. Gurobi plans the full collision-free trajectory in one shot.
---------------------------------------------------------------------------------------------------------------------------------

A two-link planar manipulator has to move its end effector to a prescribed
Cartesian target while avoiding a circular obstacle. The position of the arm in
the workspace is a trigonometric function of the joint angles, so both the
terminal condition and the collision-avoidance conditions are nonlinear.

The notebook discretizes the motion into 200 time steps over a five second
horizon and minimizes the control effort together with its rate of change,
which keeps the motion smooth. Collision avoidance is imposed at sample points
along both links at every time step, and the resulting trajectory is rendered
as an animation.

Access the Jupyter Notebook Modeling Example
--------------------------------------------

The examples will be published as Google Colab notebooks, a free online Jupyter
Notebook environment that allows you to write and execute Python code through
your browser.

.. note::

   Placeholder: the Colab link for
   ``notebooks/manipulator/planar_manipulator_v14_final.ipynb`` will be added
   here once the notebooks are published.

.. include:: _how-to-run.rst
