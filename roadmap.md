## TODO

-   [x] Parameter Selection: `rho`, `sigma` and `alpha` from examples (data driven)
-   [x] Avoid square roots when computing residuals
-   [ ] Add option in CODEGEN to have floats
-   [ ] Convert distribute.py script (for matlab mex files) to Matlab
-   [x] Add functions to update matrices in Python and Matlab
-   [x] Add functions to update matrices in codegen
-   [x] Replace PySys_WriteStdout by PyErr_SetString(PyExc_ValueError, <message>)
-   [ ] Add functions to update rho and sigma (by updating the KKT matrix entries)
-   [ ] Replace EMBEDDED flag in C with:  EMBEDDED, EMBEDDED_PARAMETERS_VECTORS, EMBEDDED_PARAMETERS_MATRICES (all true/false)
-   [x] Add unittests Python for code generation
-   [x] Add CTRL-C interrupt close function
-   [x] Implement code generation in Matlab
-   [ ] Fix relative criterion for termination condition
-   [ ] Implement cheaper dual residual computation: (only one matrix-vector computation)
-   [ ] Stress tests Maros Meszaros
-   [ ] Link to CVXPY

### Test Problems

-   [QPLIB2014](http://www.lamsade.dauphine.fr/QPlib2014/doku.php)
-   [Maros and Meszaros Convex Quadratic Programming](https://github.com/YimingYAN/QP-Test-Problems) Test Problem Set



### Examples with bad convergence
-   Add cost function and bounds scaling
-   See `interfaces/python/examples/bad_convergence`
