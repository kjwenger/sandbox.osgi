#!/usr/bin/env bash

MULTIARCH_TUPLE="arm-fsl-linux-gnueabi"

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging/${MULTIARCH_TUPLE}"
BUILD_DIR="${PROJECT_DIR}/build.okmx6ul-c3-20170821"

cd "${PROJECT_DIR}"
mkdir -p "${BUILD_DIR}"
pushd "${BUILD_DIR}"
rm -Rf *
cmake \
      -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
      -DCMAKE_TOOLCHAIN_FILE="${PROJECT_DIR}/toolchain/okmx6ul-c3-20170821.cmake" \
      -DCMAKE_PREFIX_PATH="${STAGING_DIR}" \
      -DCMAKE_STAGING_PREFIX="${STAGING_DIR}" \
      -DCMAKE_INSTALL_PREFIX="${STAGING_DIR}" \
      ..
make -j
popd
cd "${CURRENT_DIR}"
