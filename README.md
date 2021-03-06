# Bormatec CamFlyer-Q Control Analysis


## IPython Notebook

IPython notebooks are used for the analysis.
Notebook viewer can be used to view the notebooks
without IPython installed:

* http://nbviewer.ipython.org/github/jgoppert/camflyer/tree/master/notebooks/

### Dependencies

Slycot depends on BLAS and LAPACK. To obtain them, run

```bash
apt-get libblas3gf liblapack3gf
```

```bash
apt-get install python-pip
pip install numpy scipy sympy slycot control ipython jinja2
```
Note if you get a link error such as

```bash
AttributeError: 'module' object has no attribute 'sb02mt_n'
```

When trying to use slycot functions, you probably didn't install slycot properly.

### Running IPython Notebooks

From the root directory of camflyer.

```bash
ipython notebook notebooks
```

## Computational Fluid Dynamics Model

* XFLR5-6.10 : This is the latest svn version and can be automatically installed by typing

```bash
sudo apt-get install subverion libapache2-svn
make
```

After the build completes, to run the svn version of XFLR5 usin the command

```bash
./tools/bin/xflr5 xflr5/camflyer.xfl
```
