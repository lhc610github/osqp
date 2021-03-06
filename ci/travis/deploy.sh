#!/bin/bash
set -ev


# Update variables from install
# CMake
if [[ "${TRAVIS_OS_NAME}" == "linux" ]]; then
    export PATH=${DEPS_DIR}/cmake/bin:${PATH}
fi

# Anaconda
export PATH=${DEPS_DIR}/miniconda/bin:$PATH
hash -r
source activate testenv



cd ${TRAVIS_BUILD_DIR}/interfaces/python/conda_recipe

echo "Creating conda package..."
conda build --python ${PYTHON_VERSION} osqp --output-folder conda-bld/

echo "Deploying to Anaconda.org..."
anaconda -t $ANACONDA_TOKEN upload conda-bld/**/osqp-*.tar.bz2 --user oxfordcontrol

echo "Successfully deployed to Anaconda.org."


# Binary Linux packages not supported on Pypi
if [[ "$TRAVIS_OS_NAME" != "linux" ]]; then

    cd ${TRAVIS_BUILD_DIR}/interfaces/python

    echo "Creating pip package..."
    python setup.py bdist_wheel
    echo "Deploying to Pypi..."
    twine upload --config-file ../../ci/pypirc -p $PYPI_PASSWORD dist/*
    echo "Successfully deployed to Pypi"

fi




exit 0
