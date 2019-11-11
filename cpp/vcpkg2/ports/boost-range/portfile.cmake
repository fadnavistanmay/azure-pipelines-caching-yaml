# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/range
    REF boost-1.71.0
    SHA512 9d83dec261bc494e074697a7aeb759ffcd3e12bbd2c6595e9d886b23347b53aa643f64b304ea842853c333612b356f81c2b330cfd6a7ee833497566b9721a666
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})