# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/interval
    REF boost-1.71.0
    SHA512 95863f6851114e878b59537ea8f5314064436899b90a39c3357521faf79181ca0f3a833c7a8d3fc873b804e5b9c16221edbff94716b3d5287af831aed40b97d4
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})