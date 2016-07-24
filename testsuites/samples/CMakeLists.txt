CONFIGURE_FILE( config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )
ADD_DEFINITIONS( -DHAVE_CONFIG_H=1 )
RTEMS_C_EXECUTABLE( base_cp base_sp/apptask.c base_sp/init.c )
# TODO: base_mp
RTEMS_C_EXECUTABLE( capture capture/init.c capture/test1.c )
RTEMS_CXX_EXECUTABLE( cdtest cdtest/init.c cdtest/main.cc )
RTEMS_C_EXECUTABLE( fileio fileio/init.c )
RTEMS_C_EXECUTABLE( hello hello/init.c )
RTEMS_CXX_EXECUTABLE( iostream iostream/init.cc )
RTEMS_C_EXECUTABLE( loopback loopback/init.c )
RTEMS_C_EXECUTABLE( minimum minimum/init.c )
RTEMS_C_EXECUTABLE( nsecs nsecs/init.c nsecs/empty.c )
RTEMS_C_EXECUTABLE( paranoia paranoia/init.c paranoia/paranoia.c )
TARGET_COMPILE_DEFINITIONS( paranoia PRIVATE 
  -DNOSIGNAL -DCYGNUS -DNOMAIN
)
TARGET_LINK_LIBRARIES( paranoia m )
RTEMS_C_EXECUTABLE( pppd pppd/init.c pppd/pppdapp.c )
RTEMS_C_EXECUTABLE( ticker ticker/init.c ticker/tasks.c )
RTEMS_C_EXECUTABLE( unlimited 
  unlimited/init.c
  unlimited/test1.c
  unlimited/test2.c
  unlimited/test3.c
)
