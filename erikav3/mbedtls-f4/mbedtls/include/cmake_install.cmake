# Install script for directory: /home/araujoj20/Documents/GitHub/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/aes.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/aria.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/asn1.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/asn1write.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/base64.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/bignum.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/block_cipher.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/build_info.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/camellia.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ccm.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/chacha20.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/chachapoly.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/check_config.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/cipher.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/cmac.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/compat-2.x.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_adjust_x509.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/config_psa.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/constant_time.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/debug.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/des.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/dhm.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ecdh.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ecdsa.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ecjpake.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ecp.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/entropy.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/error.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/gcm.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/hkdf.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/lms.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/mbedtls_config.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/md.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/md5.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/net_sockets.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/nist_kw.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/oid.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/pem.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/pk.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/pkcs12.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/pkcs5.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/pkcs7.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/platform.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/platform_time.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/platform_util.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/poly1305.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/private_access.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/psa_util.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ripemd160.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/rsa.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/sha1.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/sha256.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/sha3.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/sha512.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ssl.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/threading.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/timing.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/version.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/x509.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/x509_crl.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/x509_crt.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/build_info.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_adjust_config_dependencies.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_compat.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_config.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_driver_common.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_extra.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_legacy.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_platform.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_se_driver.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_sizes.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_struct.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_types.h"
    "/home/araujoj20/Documents/GitHub/mbedtls/include/psa/crypto_values.h"
    )
endif()

