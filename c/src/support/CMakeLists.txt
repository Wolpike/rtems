ADD_LIBRARY( rtems_c_support version.c )
SET_SOURCE_FILES_PROPERTIES( version.c PROPERTIES
  COMPILE_FLAGS "-DRTEMS_BSP=\"${RTEMS_BSP}\""
)
ADD_DEPENDENCIES( rtems_c_support rtems_preinstall_headers )
