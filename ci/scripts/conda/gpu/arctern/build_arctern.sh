#!/usr/bin/env bash

set -e

CONDA_PY=${CONDA_PY:="37"}

if [ "$BUILD_ARCTERN" == '1' ]; then
  echo "Building arctern..."
  CONDA_PY="${CONDA_PY}" conda build conda/recipes/arctern/gpu -c defaults -c conda-forge -c nvidia
fi
