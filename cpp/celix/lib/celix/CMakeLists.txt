cmake_minimum_required(VERSION 3.10)
if (NOT DEFINED CMAKE_PREFIX_PATH)
    set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../../staging)
endif (NOT DEFINED CMAKE_PREFIX_PATH)
set(CMAKE_ARGS
        -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
        -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
        -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
        -DBUILD_SHARED_LIBS:BOOL=ON
)
include(ExternalProject)
ExternalProject_Add(
        org.apache.celix
        URL http://mirror.synyx.de/apache//celix/celix-2.1.0/celix-2.1.0.tar.gz
        DOWNLOAD_NO_PROGRESS TRUE
        CMAKE_ARGS ${CMAKE_ARGS}
        INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
)
