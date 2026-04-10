get_filename_component(SPM_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

find_path(SentencePiece_INCLUDE_DIR 
    NAMES sentencepiece_processor.h 
    PATHS "${SPM_ROOT_DIR}/include" 
    NO_DEFAULT_PATH
)

find_library(SentencePiece_LIBRARY 
    NAMES libsentencepiece.a sentencepiece 
    PATHS "${SPM_ROOT_DIR}/lib" "${SPM_ROOT_DIR}/lib64"
    NO_DEFAULT_PATH
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(sentencepiece 
    REQUIRED_VARS SentencePiece_LIBRARY SentencePiece_INCLUDE_DIR
)

if(sentencepiece_FOUND AND NOT TARGET sentencepiece::sentencepiece)
    add_library(sentencepiece::sentencepiece UNKNOWN IMPORTED)
    
    set_target_properties(sentencepiece::sentencepiece PROPERTIES
        IMPORTED_LOCATION "${SentencePiece_LIBRARY}"
        INTERFACE_INCLUDE_DIRECTORIES "${SentencePiece_INCLUDE_DIR}"
    )
endif()
