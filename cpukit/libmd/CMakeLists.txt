# TODO: RTEMS have 'if SHA', but only for sources...
IF( RTEMS_NEWLIB )
  PREINSTALL_HEADERS_ROOT( md4.h md5.h sha256.h sha512.h )
  SET( LIBMD_SRC md4.c md5.c sha256c.c sha512c.c )
ENDIF()
ADD_LIBRARY( rtems_libmd ${LIBMD_SRC} )
ADD_DEPENDENCIES( rtems_libmd rtems_preinstall_headers )
