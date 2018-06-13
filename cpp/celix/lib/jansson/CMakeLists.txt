cmake_minimum_required(VERSION 3.10)
if (NOT DEFINED CMAKE_PREFIX_PATH)
    set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../../staging)
endif (NOT DEFINED CMAKE_PREFIX_PATH)
include(ExternalProject)
ExternalProject_Add(
        org.digip.jansson
        URL http://www.digip.org/jansson/releases/jansson-2.11.tar.gz
        DOWNLOAD_NO_PROGRESS TRUE
        CONFIGURE_COMMAND ./configure --with-sysroot=${CMAKE_SYSROOT} --prefix=${CMAKE_PREFIX_PATH}
        BUILD_COMMAND make VERBOSE=1
        BUILD_IN_SOURCE true
        INSTALL_COMMAND make install VERBOSE=1
)
