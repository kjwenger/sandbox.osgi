message("CMAKE_PREFIX_PATH: ${CMAKE_PREFIX_PATH}")
message("OPENSSL_ROOT_DIR: ${OPENSSL_ROOT_DIR}")
message("OPENSSL_USE_STATIC_LIBS: ${OPENSSL_USE_STATIC_LIBS}")
message("OPENSSL_MSVC_STATIC_RT: ${OPENSSL_MSVC_STATIC_RT}")
find_package(OpenSSL REQUIRED)
message("OPENSSL_FOUND: ${OPENSSL_FOUND}")
message("OPENSSL_INCLUDE_DIR: ${OPENSSL_INCLUDE_DIR}")
message("OPENSSL_CRYPTO_LIBRARY: ${OPENSSL_CRYPTO_LIBRARY}")
message("OPENSSL_SSL_LIBRARY: ${OPENSSL_SSL_LIBRARY}")
message("OPENSSL_LIBRARIES: ${OPENSSL_LIBRARIES}")
message("OPENSSL_VERSION: ${OPENSSL_VERSION}")