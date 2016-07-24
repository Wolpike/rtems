SET( LIBI2C_SRC libi2c.c )
ADD_LIBRARY( rtems_libi2c ${LIBI2C_SRC} )
ADD_DEPENDENCIES( rtems_libi2c rtems_preinstall_headers )
