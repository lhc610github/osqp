.. _c_cpp_interface:

C/C++
=====




.. _C_main_API:

Main solver API
---------------

The main C/C++ API is imported from the header :code:`osqp.h` and provides the following functions


.. doxygenfunction:: osqp_setup

.. doxygenfunction:: osqp_solve

.. doxygenfunction:: osqp_cleanup


.. _C_sublevel_API:

Sublevel API
------------
Sublevel C/C++ API is also imported from the header :code:`osqp.h` and provides the following functions

.. doxygenfunction:: osqp_update_lin_cost

.. doxygenfunction:: osqp_update_lower_bound

.. doxygenfunction:: osqp_update_upper_bound

.. doxygenfunction:: osqp_update_bounds

.. doxygenfunction:: osqp_update_P

.. doxygenfunction:: osqp_update_A

.. doxygenfunction:: osqp_update_P_A


Data types
----------

The most basic used datatypes are

.. doxygentypedef:: c_int
.. doxygentypedef:: c_float

:code:`c_int` can be :code:`long` or :code:`int` if the compiler flag :code:`DLONG` is set or not. :code:`c_float` can be a :code:`float` or a :code:`double` if the compiler flag :code:`DFLOAT` is set or not.



The relevant structures used in the API are

Data
^^^^

.. doxygenstruct:: OSQPData
   :members:

The matrices are defined in `Compressed Sparse Column (CSC) format <https://people.sc.fsu.edu/~jburkardt/data/cc/cc.html>`_.

.. doxygenstruct:: csc
   :members:

Settings
^^^^^^^^

.. doxygenstruct:: OSQPSettings
  :members:

Solution
^^^^^^^^

.. doxygenstruct:: OSQPSolution
   :members:

Info
^^^^^

.. doxygenstruct:: OSQPInfo
   :members:

Workspace
^^^^^^^^^

.. doxygenstruct:: OSQPWorkspace
   :members:


Scaling
^^^^^^^

.. doxygenstruct:: OSQPScaling
   :members:

Polish
^^^^^^
.. doxygenstruct:: OSQPPolish
  :members:



.. TODO: Add sublevel API
.. TODO: Add using your own linear system solver
