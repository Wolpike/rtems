CONFIGURE_FILE( config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h )
INCLUDE_DIRECTORIES( include ${CMAKE_CURRENT_BINARY_DIR} )
ADD_DEFINITIONS( -DHAVE_CONFIG_H )
RTEMS_C_EXECUTABLE( psx13 psx13/main.c psx13/test.c )
RTEMS_C_EXECUTABLE( psxchroot01  psxchroot01/main.c psxchroot01/test.c )
RTEMS_C_EXECUTABLE( psxclock psxclock/init.c )
RTEMS_C_EXECUTABLE( psxfchx01 psxfchx01/init.c )
RTEMS_C_EXECUTABLE( psxfile01 
  psxfile01/main.c 
  psxfile01/test.c
  psxfile01/test_cat.c
  psxfile01/test_extend.c
  psxfile01/test_write.c
)
RTEMS_C_EXECUTABLE( psxfile02 psxfile02/init.c ../support/src/spin.c )
RTEMS_C_EXECUTABLE( psxfilelock01 psxfilelock01/init.c )
RTEMS_C_EXECUTABLE( psxgetrusage01
  psxgetrusage01/init.c ../support/src/spin.c )
RTEMS_C_EXECUTABLE( psxid01  psxid01/init.c )
RTEMS_C_EXECUTABLE( psximfs01 psximfs01/init.c )
RTEMS_C_EXECUTABLE( psximfs02 psximfs02/init.c )
RTEMS_C_EXECUTABLE( psxkey01 
  psxkey01/init.c ../support/src/test_support.c )
RTEMS_C_EXECUTABLE( psxkey02 psxkey02/init.c )
RTEMS_C_EXECUTABLE( psxkey03 psxkey03/init.c )
RTEMS_C_EXECUTABLE( psxkey04  psxkey04/init.c )
RTEMS_C_EXECUTABLE( psxkey05 psxkey05/init.c )
RTEMS_C_EXECUTABLE( psxkey06 psxkey06/init.c )
RTEMS_C_EXECUTABLE( psxkey08 psxkey08/init.c )
RTEMS_C_EXECUTABLE( psxkey09 psxkey09/init.c )
RTEMS_C_EXECUTABLE( psxkey10 psxkey10/init.c )
RTEMS_C_EXECUTABLE( psxmount psxmount/main.c psxmount/test.c )
RTEMS_C_EXECUTABLE( psxonce01 psxonce01/init.c )
RTEMS_C_EXECUTABLE( psxpasswd01 psxpasswd01/init.c )
RTEMS_C_EXECUTABLE( psxpasswd02 psxpasswd02/init.c )
RTEMS_C_EXECUTABLE( psxpipe01 psxpipe01/init.c )
RTEMS_C_EXECUTABLE( psxrdwrv psxrdwrv/main.c psxrdwrv/test.c )
RTEMS_C_EXECUTABLE( psxreaddir psxreaddir/main.c psxreaddir/test.c )
RTEMS_C_EXECUTABLE( psxstat psxstat/main.c psxstat/test.c )
RTEMS_C_EXECUTABLE( psxtimes01 psxtimes01/init.c ../support/src/spin.c )
IF( RTEMS_POSIX_API )
  RTEMS_C_EXECUTABLE( psx01 psx01/init.c psx01/task.c )
  RTEMS_C_EXECUTABLE( psx02 psx02/init.c psx02/task.c )
  RTEMS_C_EXECUTABLE( psx03 psx03/init.c psx03/task.c )
  RTEMS_C_EXECUTABLE( psx04 
    psx04/init.c psx04/task1.c psx04/task2.c psx04/task3.c )
  RTEMS_C_EXECUTABLE( psx05 
    psx05/init.c psx05/task.c psx05/task2.c psx05/task3.c )
  RTEMS_C_EXECUTABLE( psx06 psx06/init.c psx06/task.c psx06/task2.c )
  RTEMS_C_EXECUTABLE( psx07 psx07/init.c psx07/task.c )
  RTEMS_C_EXECUTABLE( psx08 
    psx08/init.c psx08/task1.c psx08/task2.c psx08/task3.c )
  RTEMS_C_EXECUTABLE( psx09  psx09/init.c )
  RTEMS_C_EXECUTABLE( psx10 
    psx10/init.c psx10/task.c psx10/task2.c psx10/task3.c )
  RTEMS_C_EXECUTABLE( psx11 psx11/init.c psx11/task.c )
  RTEMS_C_EXECUTABLE( psx12 psx12/init.c psx12/task.c )
  RTEMS_C_EXECUTABLE( psx14 psx14/init.c )
  RTEMS_C_EXECUTABLE( psx15 psx15/init.c )
  RTEMS_C_EXECUTABLE( psx16  psx16/init.c )
  RTEMS_C_EXECUTABLE( psxaio01 psxaio01/init.c )
  RTEMS_C_EXECUTABLE( psxaio02 psxaio02/init.c )
  RTEMS_C_EXECUTABLE( psxaio03  psxaio03/init.c )
  RTEMS_C_EXECUTABLE( psxalarm01 psxalarm01/init.c )
  RTEMS_C_EXECUTABLE( psxautoinit01 psxautoinit01/init.c )
  RTEMS_C_EXECUTABLE( psxautoinit02 psxautoinit02/init.c )
  RTEMS_C_EXECUTABLE( psxbarrier01 
    psxbarrier01/main.c psxbarrier01/test.c )
  RTEMS_C_EXECUTABLE( psxcancel psxcancel/init.c )
  RTEMS_C_EXECUTABLE( psxcancel01 psxcancel01/init.c )
  RTEMS_C_EXECUTABLE( psxclassic01 psxclassic01/init.c )
  RTEMS_C_EXECUTABLE( psxcleanup psxcleanup/psxcleanup.c )
  RTEMS_C_EXECUTABLE( psxcleanup01  psxcleanup01/init.c )
  RTEMS_C_EXECUTABLE( psxclock01 psxclock01/init.c )
  RTEMS_C_EXECUTABLE( psxcond01 psxcond01/init.c )
  RTEMS_C_EXECUTABLE( psxconfig01 psxconfig01/init.c )
  RTEMS_C_EXECUTABLE( psxeintr_join psxeintr_join/init.c )
  RTEMS_C_EXECUTABLE( psxenosys  psxenosys/init.c )
  RTEMS_C_EXECUTABLE( psxfatal01 psxfatal_support/init.c )
  TARGET_INCLUDE_DIRECTORIES( psxfatal01 PRIVATE psxfatal01 )
  RTEMS_C_EXECUTABLE( psxfatal02 psxfatal_support/init.c )
  TARGET_INCLUDE_DIRECTORIES( psxfatal02 PRIVATE psxfatal02 )
  RTEMS_C_EXECUTABLE( psxgetattrnp01 psxgetattrnp01/init.c )
  # TODO: RTEMS_C_EXECUTABLE( psxhdrs psxhdrs/init.c )
  RTEMS_C_EXECUTABLE( psxintrcritical01 
    psxintrcritical01/init.c 
    ../sptests/spintrcritical_support/intrcritical.c 
  )
  TARGET_INCLUDE_DIRECTORIES( psxintrcritical01 PRIVATE
    ../sptests/spintrcritical_support
  )
  RTEMS_C_EXECUTABLE( psxitimer psxitimer/init.c )
  RTEMS_C_EXECUTABLE( psxkey07 psxkey07/init.c )
  RTEMS_C_EXECUTABLE( psxmsgq01 
    psxmsgq01/init.c ../support/src/test_support.c )
  RTEMS_C_EXECUTABLE( psxmsgq02 
    psxmsgq02/init.c ../support/src/test_support.c )
  RTEMS_C_EXECUTABLE( psxmsgq03 
    psxmsgq03/init.c ../support/src/test_support.c )
  RTEMS_C_EXECUTABLE( psxmsgq04 
    psxmsgq04/init.c ../support/src/test_support.c )
  RTEMS_C_EXECUTABLE( psxmutexattr01 psxmutexattr01/init.c )
  RTEMS_C_EXECUTABLE( psxobj01 
    psxobj01/init.c ../support/src/test_support.c )
  RTEMS_C_EXECUTABLE( psxrwlock01 
    psxrwlock01/main.c psxrwlock01/test.c )
  RTEMS_C_EXECUTABLE( psxsem01 
    psxsem01/init.c ../support/src/test_support.c )
  RTEMS_C_EXECUTABLE( psxsignal01
    psxsignal01/init.c psxsignal01/task1.c )
  RTEMS_C_EXECUTABLE( psxsignal02  psxsignal02/init.c )
  RTEMS_C_EXECUTABLE( psxsignal03 psxsignal03/init.c )
  TARGET_COMPILE_DEFINITIONS( 
    psxsignal03 PRIVATE -DUSE_USER_SIGNALS_PROCESS )
  RTEMS_C_EXECUTABLE( psxsignal04 psxsignal03/init.c )
  TARGET_COMPILE_DEFINITIONS( 
    psxsignal04 PRIVATE -DUSE_REAL_TIME_SIGNALS_PROCESS )
  RTEMS_C_EXECUTABLE( psxsignal05 psxsignal05/init.c )
  RTEMS_C_EXECUTABLE( psxsignal06 psxsignal06/init.c )
  RTEMS_C_EXECUTABLE( psxspin01 psxspin01/main.c psxspin01/test.c )
  RTEMS_C_EXECUTABLE( psxspin02 psxspin02/main.c psxspin02/test.c )
  RTEMS_C_EXECUTABLE( psxstack01 psxstack01/init.c )
  RTEMS_C_EXECUTABLE( psxstack02 psxstack02/init.c )
  RTEMS_C_EXECUTABLE( psxsysconf psxsysconf/init.c )
  RTEMS_C_EXECUTABLE( psxtime psxtime/main.c psxtime/test.c )
  RTEMS_C_EXECUTABLE( psxtimer01 psxtimer01/psxtimer.c )
  RTEMS_C_EXECUTABLE( psxtimer02 psxtimer02/psxtimer.c )
  RTEMS_C_EXECUTABLE( psxualarm psxualarm/init.c )
  RTEMS_C_EXECUTABLE( psxusleep psxusleep/init.c )
  IF( RTEMS_CPLUSPLUS )
    RTEMS_CXX_EXECUTABLE( psxglobalcon01 psxglobalcon01/init.cc )
    RTEMS_CXX_EXECUTABLE( psxglobalcon02 psxglobalcon02/init.cc )
  ENDIF()
ENDIF()
