
# Preinstall stuff

ADD_CUSTOM_TARGET( rtems_preinstall_headers )
ADD_CUSTOM_TARGET( preinstall_headers )
IF( RTEMS_PREINSTALL )
  ADD_DEPENDENCIES( rtems_preinstall_headers preinstall_headers )
ENDIF()

IF( NOT EXISTS "${RTEMS_PREINSTALL_DIRECTORY}" )
  FILE( MAKE_DIRECTORY "${RTEMS_PREINSTALL_DIRECTORY}" )
ENDIF()

FUNCTION( PREINSTALL_HEADERS path )
  IF( NOT EXISTS "${RTEMS_PREINSTALL_DIRECTORY}/${path}" )
    FILE( MAKE_DIRECTORY "${RTEMS_PREINSTALL_DIRECTORY}/${path}" )
  ENDIF()
  FOREACH( f ${ARGN} )
    GET_FILENAME_COMPONENT( filename ${f} NAME )
    GET_FILENAME_COMPONENT( fullname ${f} ABSOLUTE )
    ADD_CUSTOM_COMMAND(
      OUTPUT "${RTEMS_PREINSTALL_DIRECTORY}/${path}/${filename}"
      DEPENDS "${fullname}"
      PRE_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_if_different "${fullname}" 
                 "${RTEMS_PREINSTALL_DIRECTORY}/${path}/${filename}" 
    )
    STRING( RANDOM TARGET_RANDOM )
    ADD_CUSTOM_TARGET( 
      preinstall_${filename}_${TARGET_RANDOM}
      DEPENDS "${RTEMS_PREINSTALL_DIRECTORY}/${path}/${filename}"
    )
    ADD_DEPENDENCIES(
      preinstall_headers
      preinstall_${filename}_${TARGET_RANDOM}
    )
  ENDFOREACH()
ENDFUNCTION()

FUNCTION( PREINSTALL_HEADERS_ROOT )
  FOREACH( f ${ARGN} )
    GET_FILENAME_COMPONENT( filename ${f} NAME )
    GET_FILENAME_COMPONENT( fullname ${f} ABSOLUTE )
    ADD_CUSTOM_COMMAND(
      OUTPUT "${RTEMS_PREINSTALL_DIRECTORY}/${filename}"
      DEPENDS "${fullname}"
      PRE_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_if_different "${fullname}" 
                 "${RTEMS_PREINSTALL_DIRECTORY}/${filename}" 
    )
    STRING( RANDOM TARGET_RANDOM )
    ADD_CUSTOM_TARGET( 
      preinstall_${filename}_${TARGET_RANDOM}
      DEPENDS "${RTEMS_PREINSTALL_DIRECTORY}/${filename}"
    )
    ADD_DEPENDENCIES(
      preinstall_headers
      preinstall_${filename}_${TARGET_RANDOM}
    )
  ENDFOREACH()
ENDFUNCTION()

FUNCTION( RTEMS_COPY_TO_LIB name source )
  ADD_CUSTOM_COMMAND(
    OUTPUT "${LIBRARY_OUTPUT_PATH}/${name}"
    DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/${source}"
    COMMAND "${CMAKE_COMMAND}" -E copy "${CMAKE_CURRENT_SOURCE_DIR}/${source}"
                                       "${LIBRARY_OUTPUT_PATH}/${name}"
  )
  ADD_CUSTOM_TARGET( ${name} DEPENDS "${LIBRARY_OUTPUT_PATH}/${name}" )
ENDFUNCTION()

FUNCTION( RTEMS_CHECK_DECL func include var )
  SET( CHECK_DECL_TMP_REQUIRED_FLAGS ${CMAKE_REQUIRED_FLAGS} )
  SET( CHECK_DECL_TMP_REQUIRED_DEFINITIONS {$CMAKE_REQUIRED_DEFINITIONS} )
  SET( CMAKE_REQUIRED_FLAGS -c )
  SET( CMAKE_REQUIRED_DEFINITIONS ${ARGN} )
  CHECK_SYMBOL_EXISTS( ${func} ${include} ${var} )
  SET( CMAKE_REQUIRED_FLAGS ${CHECK_DECL_TMP_REQUIRED_FLAGS} )
  SET( CMAKE_REQUIRED_DEFINITIONS ${CHECK_DECL_TMP_REQUIRED_DEFINITIONS} )
ENDFUNCTION()

FUNCTION( RTEMS_CHECK_TYPE type include var )
  SET( CHECK_TYPE_TMP_INCLUDE_FILES ${CMAKE_EXTRA_INCLUDE_FILES} )
  SET( CMAKE_EXTRA_INCLUDE_FILES ${include} )
  CHECK_TYPE_SIZE( "${type}" ${var} )
  SET( CMAKE_EXTRA_INCLUDE_FILES ${CHECK_TYPE_TMP_INCLUDE_FILES} )
ENDFUNCTION()

MACRO( RTEMS_BOOL_EXPR output )
  IF( ${ARGN} )
    SET( ${output} TRUE )
  ELSE()
    SET( ${output} FALSE )
  ENDIF()
ENDMACRO()

MACRO( RTEMS_BSP_CLEANUP_OPTIONS key reset print )
  OPTION( 
    BSP_PRESS_KEY_FOR_RESET
    "Wait for keypress when application exits"
    ${key}
  )
  OPTION(
    BSP_RESET_BOARD_AT_EXIT
    "Reset board when application exits"
    ${reset}
  )
  OPTION(
    BSP_PRINT_EXCEPTION_CONTEXT
    "Print exception context when an unexpected exception occurs"
    ${print}
  )
ENDMACRO()
