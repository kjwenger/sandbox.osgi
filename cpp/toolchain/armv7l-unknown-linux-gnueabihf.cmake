set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(MULTIARCH_TUPLE "armv7l-unknown-linux-gnueabihf")
set(CMAKE_EXTERNAL_TOOLCHAIN "/opt/${MULTIARCH_TUPLE}")
set(CMAKE_C_COMPILER_TARGET "${MULTIARCH_TUPLE}")
set(CMAKE_C_COMPILER_EXTERNAL_TOOLCHAIN  "${CMAKE_EXTERNAL_TOOLCHAIN}")
set(CMAKE_CXX_COMPILER_TARGET "${MULTIARCH_TUPLE}")
set(CMAKE_CXX_COMPILER_EXTERNAL_TOOLCHAIN  "${CMAKE_EXTERNAL_TOOLCHAIN}")
set(CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/staging/${MULTIARCH_TUPLE}")
set(CMAKE_SYSROOT "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/sysroot")

set(CMAKE_C_COMPILER "${CMAKE_EXTERNAL_TOOLCHAIN}/bin/${MULTIARCH_TUPLE}-gcc")
#set(CMAKE_C_LINK_EXECUTABLE "<CMAKE_C_COMPILER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
#set(CMAKE_C_LINK_EXECUTABLE "<CMAKE_LINKER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_CXX_COMPILER "${CMAKE_EXTERNAL_TOOLCHAIN}/bin/${MULTIARCH_TUPLE}-g++")
#set(CMAKE_CXX_LINK_EXECUTABLE "<CMAKE_CXX_COMPILER> <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
#set(CMAKE_CXX_LINK_EXECUTABLE "<CMAKE_LINKER> <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
#set(CMAKE_ASM_COMPILER "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/as")
#set(CMAKE_AR "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ar")
#set(CMAKE_C_COMPILER_AR "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ar")
#set(CMAKE_CXX_COMPILER_AR "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ar")
#set(CMAKE_LINKER "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ld")
#set(CMAKE_RANLIB "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ranlib")
#set(CMAKE_C_COMPILER_RANLIB "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ranlib")
#set(CMAKE_CXX_COMPILER_RANLIB "${CMAKE_EXTERNAL_TOOLCHAIN}/arm-unknown-linux-gnueabihf/bin/ranlib")
set(CMAKE_FIND_ROOT_PATH "${CMAKE_EXTERNAL_TOOLCHAIN}")
set(CMAKE_FIND_ROOT_PATH "${CMAKE_SYSROOT}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)