#!/usr/bin/env bash

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging"
BUILD_DIR="${PROJECT_DIR}/build"

cd "${PROJECT_DIR}"
mkdir -p "${BUILD_DIR}"
pushd "${BUILD_DIR}"
rm -Rf *
cmake \
      -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
      -DCMAKE_INSTALL_PREFIX="${STAGING_DIR}" \
      ..
make -j
popd
cd "${CURRENT_DIR}"
