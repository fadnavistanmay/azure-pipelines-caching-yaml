# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/parameter
    REF boost-1.71.0
    SHA512 a25a0697c0441d59b316fab395214544726364cd11daefc376cd01d908aeb4b62d38c9dbe936f6e4ca8c5614b77c7c9fecc182691ef6917ebf95d924211e997e
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})