# TODO: rtems++ gxx01 tarXX

CONFIGURE_FILE( config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )
ADD_DEFINITIONS( -DHAVE_CONFIG_H )

# POSIX
RTEMS_C_EXECUTABLE( calloc POSIX/calloc.c )
RTEMS_C_EXECUTABLE( clock_gettime POSIX/clock_gettime.c )
RTEMS_C_EXECUTABLE( close POSIX/close.c )
RTEMS_C_EXECUTABLE( dup2 POSIX/dup2.c )
RTEMS_C_EXECUTABLE( fcntl POSIX/fcntl.c )
RTEMS_C_EXECUTABLE( flockfile POSIX/flockfile.c )
RTEMS_C_EXECUTABLE( fork POSIX/fork.c )
RTEMS_C_EXECUTABLE( free POSIX/free.c )
RTEMS_C_EXECUTABLE( fstat POSIX/fstat.c )
RTEMS_C_EXECUTABLE( ftrylockfile POSIX/ftrylockfile.c )
RTEMS_C_EXECUTABLE( funlockfile POSIX/funlockfile.c )
RTEMS_C_EXECUTABLE( getlogin POSIX/getlogin.c )
RTEMS_C_EXECUTABLE( getpwnam POSIX/getpwnam.c )
RTEMS_C_EXECUTABLE( getpwuid POSIX/getpwuid.c )
RTEMS_C_EXECUTABLE( gettimeofday POSIX/gettimeofday.c )
RTEMS_C_EXECUTABLE( getuid POSIX/getuid.c )
RTEMS_C_EXECUTABLE( htonl POSIX/htonl.c )
RTEMS_C_EXECUTABLE( iconv POSIX/iconv.c )
RTEMS_C_EXECUTABLE( iconv_close POSIX/iconv_close.c )
RTEMS_C_EXECUTABLE( iconv_open POSIX/iconv_open.c )
RTEMS_C_EXECUTABLE( lseek POSIX/lseek.c )
RTEMS_C_EXECUTABLE( longjmp POSIX/longjmp.c )
RTEMS_C_EXECUTABLE( lstat POSIX/lstat.c )
RTEMS_C_EXECUTABLE( kill POSIX/kill.c )
RTEMS_C_EXECUTABLE( malloc POSIX/malloc.c )
RTEMS_C_EXECUTABLE( nanosleep POSIX/nanosleep.c )
RTEMS_C_EXECUTABLE( open POSIX/open.c )
RTEMS_C_EXECUTABLE( pipe POSIX/pipe.c )
RTEMS_C_EXECUTABLE( posix_memalign POSIX/posix_memalign.c )
RTEMS_C_EXECUTABLE( read POSIX/read.c )
RTEMS_C_EXECUTABLE( readv POSIX/readv.c )
RTEMS_C_EXECUTABLE( realloc POSIX/realloc.c )
RTEMS_C_EXECUTABLE( setjmp POSIX/setjmp.c )
RTEMS_C_EXECUTABLE( sigaddset POSIX/sigaddset.c )
RTEMS_C_EXECUTABLE( sigdelset POSIX/sigdelset.c )
RTEMS_C_EXECUTABLE( sigemptyset POSIX/sigemptyset.c )
RTEMS_C_EXECUTABLE( sigfillset POSIX/sigfillset.c )
RTEMS_C_EXECUTABLE( sigismember POSIX/sigismember.c )
RTEMS_C_EXECUTABLE( sigprocmask POSIX/sigprocmask.c )
RTEMS_C_EXECUTABLE( stat POSIX/stat.c )
RTEMS_C_EXECUTABLE( unlink POSIX/unlink.c )
RTEMS_C_EXECUTABLE( vfork POSIX/vfork.c )
RTEMS_C_EXECUTABLE( wait POSIX/wait.c )
RTEMS_C_EXECUTABLE( waitpid POSIX/waitpid.c )
RTEMS_C_EXECUTABLE( write POSIX/write.c )
RTEMS_C_EXECUTABLE( writev POSIX/writev.c )

RTEMS_C_EXECUTABLE( defaultconfig01 defaultconfig01/init.c )
RTEMS_C_EXECUTABLE( pwdgrp02 pwdgrp02/init.c )
RTEMS_C_EXECUTABLE( shell01 shell01/init.c)
RTEMS_C_EXECUTABLE( pwdgrp01 pwdgrp01/init.c)
RTEMS_C_EXECUTABLE( crypt01 crypt01/init.c)
RTEMS_C_EXECUTABLE( sha sha/init.c)
RTEMS_C_EXECUTABLE( i2c01 i2c01/init.c)
RTEMS_C_EXECUTABLE( newlib01 newlib01/init.c)
RTEMS_C_EXECUTABLE( block17 block17/init.c)
RTEMS_C_EXECUTABLE( exit02 exit02/init.c)
RTEMS_C_EXECUTABLE( exit01 exit01/init.c)
RTEMS_C_EXECUTABLE( utf8proc01 utf8proc01/init.c)
RTEMS_C_EXECUTABLE( md501 md501/init.c)
RTEMS_C_EXECUTABLE( sparsedisk01 sparsedisk01/init.c)
RTEMS_C_EXECUTABLE( block16 block16/init.c)
RTEMS_C_EXECUTABLE( block15 block15/init.c)
RTEMS_C_EXECUTABLE( block14 block14/init.c)
RTEMS_C_EXECUTABLE( block13 block13/init.c)
RTEMS_C_EXECUTABLE( rbheap01 rbheap01/init.c)
RTEMS_C_EXECUTABLE( flashdisk01 
  flashdisk01/init.c
  flashdisk01/test-file-system.c 
)
RTEMS_C_EXECUTABLE( capture01 capture01/init.c capture01/test1.c )

RTEMS_C_EXECUTABLE( bspcmdline01  bspcmdline01/init.c )
RTEMS_C_EXECUTABLE( cpuuse  
  cpuuse/init.c 
  cpuuse/task1.c
  cpuuse/task2.c
  cpuuse/task3.c
  cpuuse/tswitch.c
)
RTEMS_C_EXECUTABLE( devfs01  devfs01/init.c )
RTEMS_C_EXECUTABLE( devfs02  devfs02/init.c )
RTEMS_C_EXECUTABLE( devfs03  devfs03/init.c )
RTEMS_C_EXECUTABLE( devfs04  devfs04/init.c devfs04/test_driver.c )
RTEMS_C_EXECUTABLE( deviceio01
  deviceio01/init.c
  deviceio01/test_driver.c 
)
RTEMS_C_EXECUTABLE( devnullfatal01  ../sptests/spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( devnullfatal01 PRIVATE
  devnullfatal01
)
RTEMS_C_EXECUTABLE( dumpbuf01  dumpbuf01/init.c )
# RTEMS_C_EXECUTABLE( gxx01  gxx01/init.c )
RTEMS_C_EXECUTABLE( top top/init.c top/task1.c top/task2.c top/task3.c )
RTEMS_C_EXECUTABLE( malloctest  malloctest/init.c malloctest/task1.c )
RTEMS_C_EXECUTABLE( malloc02  malloc02/init.c )
RTEMS_C_EXECUTABLE( malloc03  malloc03/init.c )
RTEMS_C_EXECUTABLE( malloc04  malloc04/init.c )
RTEMS_C_EXECUTABLE( heapwalk heapwalk/init.c )
RTEMS_C_EXECUTABLE( putenvtest  putenvtest/init.c )
RTEMS_C_EXECUTABLE( monitor  monitor/init.c )
RTEMS_C_EXECUTABLE( monitor02  monitor02/init.c )
RTEMS_C_EXECUTABLE( rtmonuse  
  rtmonuse/init.c
  rtmonuse/getall.c 
  rtmonuse/task1.c
)
RTEMS_C_EXECUTABLE( stackchk
  stackchk/init.c
  stackchk/blow.c
  stackchk/task1.c
)
RTEMS_C_EXECUTABLE( stackchk01 stackchk01/init.c )
RTEMS_C_EXECUTABLE( termios  termios/init.c )
RTEMS_C_EXECUTABLE( termios01
  termios01/init.c 
  termios01/termios_testdriver.c
)
RTEMS_C_EXECUTABLE( termios02  termios02/init.c )
RTEMS_C_EXECUTABLE( termios03 
  termios03/init.c 
  termios03/termios_testdriver_polled.c
)
RTEMS_C_EXECUTABLE( termios04
  termios04/init.c 
  termios04/termios_testdriver_intr.c
)
RTEMS_C_EXECUTABLE( termios05 
  termios05/init.c 
  termios04/termios_testdriver_intr.c
)
TARGET_INCLUDE_DIRECTORIES( termios05 PRIVATE termios04 )
RTEMS_C_EXECUTABLE( termios06  
  termios06/init.c 
  termios03/termios_testdriver_polled.c
  termios06/test_pppd.c
)
TARGET_INCLUDE_DIRECTORIES( termios06 PRIVATE termios03 )
RTEMS_C_EXECUTABLE( termios07 
  termios07/init.c 
  termios04/termios_testdriver_intr.c
)
TARGET_INCLUDE_DIRECTORIES( termios07 PRIVATE termios04 )
RTEMS_C_EXECUTABLE( termios08 
  termios08/init.c 
  termios03/termios_testdriver_polled.c
)
TARGET_INCLUDE_DIRECTORIES( termios08 PRIVATE termios03 )
# RTEMS_C_EXECUTABLE( rtems++  rtems/init.c )
RTEMS_C_EXECUTABLE( tztest  tztest/init.c )
RTEMS_C_EXECUTABLE( block01  block01/init.c )
RTEMS_C_EXECUTABLE( block02  block02/init.c )
RTEMS_C_EXECUTABLE( block03  block03/init.c )
RTEMS_C_EXECUTABLE( block04  block04/init.c )
RTEMS_C_EXECUTABLE( block05  block05/init.c )
RTEMS_C_EXECUTABLE( block06  block06/init.c )
RTEMS_C_EXECUTABLE( block07 block07/init.c )
RTEMS_C_EXECUTABLE( block08 
  block08/init.c 
  block08/bdbuf_tests.c   
  block08/test_disk.c     
  block08/bdbuf_test1_1.c 
  block08/bdbuf_test1_2.c 
  block08/bdbuf_test1_3.c 
  block08/bdbuf_test1_4.c 
  block08/bdbuf_test1_5.c 
  block08/bdbuf_test2_1.c 
  block08/bdbuf_test2_2.c 
  block08/bdbuf_test3_1.c 
  block08/bdbuf_test3_2.c 
  block08/bdbuf_test3_3.c 
  block08/bdbuf_test4_1.c 
  block08/bdbuf_test4_2.c
  block08/bdbuf_test4_3.c
)
TARGET_INCLUDE_DIRECTORIES( block08 PRIVATE block08 )
RTEMS_C_EXECUTABLE( block09  block09/init.c )
RTEMS_C_EXECUTABLE( block10  block10/init.c )
RTEMS_C_EXECUTABLE( block11  block11/init.c )
RTEMS_C_EXECUTABLE( block12  block12/init.c )
RTEMS_C_EXECUTABLE( stringto01  stringto01/init.c )
# RTEMS_C_EXECUTABLE( tar01  tar01/init.c )
# RTEMS_C_EXECUTABLE( tar02  tar02/init.c )
# RTEMS_C_EXECUTABLE( tar03  tar03/init.c )
RTEMS_C_EXECUTABLE( math  math/init.c math/domath.c )
TARGET_INCLUDE_DIRECTORIES( math PRIVATE math )
TARGET_LINK_LIBRARIES( math m )
RTEMS_C_EXECUTABLE( mathf  mathf/init.c mathf/domathf.c )
TARGET_INCLUDE_DIRECTORIES( mathf PRIVATE math )
TARGET_LINK_LIBRARIES( mathf m )
RTEMS_C_EXECUTABLE( mathl  mathl/init.c mathl/domathl.c )
TARGET_COMPILE_DEFINITIONS( mathl PRIVATE -DNO_LONG_DOUBLE )
TARGET_INCLUDE_DIRECTORIES( mathl PRIVATE math )
TARGET_LINK_LIBRARIES( mathl m )
RTEMS_C_EXECUTABLE( complex  
  complex/init.c 
  complex/docomplex.c
  complex/docomplexf.c
  complex/docomplexl.c
)
TARGET_COMPILE_DEFINITIONS( complex PRIVATE -DNO_LONG_DOUBLE )
TARGET_LINK_LIBRARIES( complex m gcc ) # TODO: gcc addition is a hack 
RTEMS_C_EXECUTABLE( mouse01
  mouse01/init.c 
  mouse01/serial_mouse_config.c
  mouse01/msmouse.c
  termios04/termios_testdriver_intr.c
)
TARGET_INCLUDE_DIRECTORIES( mouse01 PRIVATE termios04 )
RTEMS_C_EXECUTABLE( uid01 
  uid01/init.c 
  uid01/serial_mouse_config.c
  uid01/msmouse.c
  termios04/termios_testdriver_intr.c
)
TARGET_INCLUDE_DIRECTORIES( uid01 PRIVATE termios04 )
