# - Config file for the Armadillo package
# It defines the following variables
#  ARMADILLO_INCLUDE_DIRS - include directories for Armadillo
#  ARMADILLO_LIBRARY_DIRS - library directories for Armadillo (normally not used!)
#  ARMADILLO_LIBRARIES    - libraries to link against

# Tell the user project where to find our headers and libraries
set(ARMADILLO_INCLUDE_DIRS "/home/wensisi.0427/cpp3rdlib/armadillo-code/build/armadillo_install/include")
set(ARMADILLO_LIBRARY_DIRS "/home/wensisi.0427/cpp3rdlib/armadillo-code/build/armadillo_install/lib64")

# Our library dependencies (contains definitions for IMPORTED targets)
include("/home/wensisi.0427/cpp3rdlib/armadillo-code/build/armadillo_install/share/Armadillo/CMake/ArmadilloLibraryDepends.cmake")

# These are IMPORTED targets created by ArmadilloLibraryDepends.cmake
set(ARMADILLO_LIBRARIES armadillo)

