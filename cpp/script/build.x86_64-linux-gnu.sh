#!/usr/bin/env bash

MULTIARCH_TUPLE="x86_64-linux-gnu"

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging/${MULTIARCH_TUPLE}"
BUILD_DIR="${PROJECT_DIR}/build.${MULTIARCH_TUPLE}"

cd "${PROJECT_DIR}"
mkdir -p "${BUILD_DIR}"
pushd "${BUILD_DIR}"
rm -Rf *
cmake \
      -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
      -DCMAKE_TOOLCHAIN_FILE="${PROJECT_DIR}/toolchain/${MULTIARCH_TUPLE}.cmake" \
      -DCMAKE_PREFIX_PATH="${STAGING_DIR}" \
      -DCMAKE_STAGING_PREFIX="${STAGING_DIR}" \
      -DCMAKE_INSTALL_PREFIX="${STAGING_DIR}" \
      ${@} \
      ..
make -j
make install
popd
cd "${CURRENT_DIR}"
