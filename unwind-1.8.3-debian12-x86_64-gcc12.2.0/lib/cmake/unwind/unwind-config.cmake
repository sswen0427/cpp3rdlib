get_filename_component(UNWIND_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

find_path(Unwind_INCLUDE_DIR
        NAMES libunwind.h
        PATHS "${UNWIND_ROOT_DIR}/include"
        NO_DEFAULT_PATH
)

find_library(Unwind_LIBRARY
        NAMES unwind
        PATHS "${UNWIND_ROOT_DIR}/lib" "${UNWIND_ROOT_DIR}/lib64"
        NO_DEFAULT_PATH
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Unwind
        REQUIRED_VARS Unwind_LIBRARY Unwind_INCLUDE_DIR
)

if(Unwind_FOUND AND NOT TARGET unwind::unwind)
    add_library(unwind::unwind UNKNOWN IMPORTED)

    set_target_properties(unwind::unwind PROPERTIES
            IMPORTED_LOCATION "${Unwind_LIBRARY}"
            INTERFACE_INCLUDE_DIRECTORIES "${Unwind_INCLUDE_DIR}"
    )
endif()

mark_as_advanced(Unwind_INCLUDE_DIR Unwind_LIBRARY)
