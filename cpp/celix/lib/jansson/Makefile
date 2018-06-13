PROJECT_ROOT_DIR?=../../../
PROJECT_SOURCE_DIR?=.
PROJECT_BINARY_DIR?=build
CMAKE_ARGS?=\
    -DCMAKE_PREFIX_PATH=${PROJECT_ROOT_DIR}/staging \
    -DCMAKE_INSTALL_PREFIX=${PROJECT_ROOT_DIR}/staging \
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \

all: build

.PHONY: configure
configure:
	cmake -H"${PROJECT_SOURCE_DIR}" -B"${PROJECT_BINARY_DIR}" ${CMAKE_ARGS}

${PROJECT_BINARY_DIR}/Makefile: configure

.PHONY: build
build: ${PROJECT_BINARY_DIR}/Makefile
	cmake --build "${PROJECT_BINARY_DIR}"

.PHONY: clean
clean:
	make -C "${PROJECT_BINARY_DIR}" clean

.PHONY: test
test: build
	make -C "${PROJECT_BINARY_DIR}" test
