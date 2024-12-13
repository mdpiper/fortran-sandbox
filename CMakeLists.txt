cmake_minimum_required(VERSION 3.14)

project(fortran-sandbox
  LANGUAGES Fortran
  DESCRIPTION "A sandbox for tinkering with Fortran code"
)

# Read version from file
file(STRINGS "${PROJECT_SOURCE_DIR}/VERSION.md" PROJECT_VERSION)
string(REPLACE "." ";" VERSION_LIST ${PROJECT_VERSION})
list(GET VERSION_LIST 0 PROJECT_VERSION_MAJOR)
list(GET VERSION_LIST 1 PROJECT_VERSION_MINOR)
list(GET VERSION_LIST 2 PROJECT_VERSION_PATCH)
unset(VERSION_LIST)

# Follow GNU conventions for installation directories
include(GNUInstallDirs)

add_subdirectory(strings)
