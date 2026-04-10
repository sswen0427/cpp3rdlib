# - Config file for the Armadillo package
# It defines the following variables
#  ARMADILLO_INCLUDE_DIRS - include directories for Armadillo
#  ARMADILLO_LIBRARY_DIRS - library directories for Armadillo (normally not used!)
#  ARMADILLO_LIBRARIES    - libraries to link against

# Tell the user project where to find our headers and libraries
get_filename_component(ARMA_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)
set(ARMADILLO_INCLUDE_DIRS "${ARMA_ROOT_DIR}/include")
set(ARMADILLO_LIBRARY_DIRS "${ARMA_ROOT_DIR}/lib64")

# Our library dependencies (contains definitions for IMPORTED targets)
include("${ARMA_ROOT_DIR}/share/Armadillo/CMake/ArmadilloLibraryDepends.cmake")

# These are IMPORTED targets created by ArmadilloLibraryDepends.cmake
set(ARMADILLO_LIBRARIES armadillo)

