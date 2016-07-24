SET( RTEMS_CPU i386 )
SET( RTEMS_BSP_FAMILY pc386 )
SET( RTEMS_BSP_CFLAGS -march=i686 )
SET( RTEMS_BSP_CFLAGS_RELEASE -Ofast -ffunction-sections -g )
SET( RTEMS_BSP_CFLAGS_DEBUG -Og -g -g3 -ggdb )

FUNCTION( RTEMS_C_EXECUTABLE name )
  ADD_EXECUTABLE( ${name} ${ARGN} )
  SET_TARGET_PROPERTIES( ${name} PROPERTIES PREFIX "" SUFFIX ".exe" )
  SET_PROPERTY( TARGET ${name} PROPERTY
    LINK_FLAGS 
      "-B${LIBRARY_OUTPUT_PATH} -T linkcmds -specs bsp_specs -qrtems -Wl,-Ttext,0x00100000 -nodefaultlibs"
  )
  TARGET_LINK_LIBRARIES( ${name}
    -Wl,--start-group
    rtems_c_bsp	
    rtems_ftpd	
    rtems_mghttpd	
    rtems_sapi
    rtems_c_cpu	
    rtems_libblock	
    rtems_misc	
    rtems_score
    rtems_c_support	
    rtems_libchip	
    rtems_network	
    rtems_scorecpu
    rtems_calloc	
    rtems_libcrypt	
    rtems_posix	
    rtems_telnetd
    rtems_dev	
    rtems_libcsupport	
    rtems_pppd
    rtems_fs	
    rtems_libi2c	
    rtems_rtems
    rtems_libmd
    c gcc
    -Wl,--end-group
  )
ENDFUNCTION()

FUNCTION( RTEMS_CXX_EXECUTABLE name )
  ADD_EXECUTABLE( ${name} ${ARGN} )
  SET_TARGET_PROPERTIES( ${name} PROPERTIES PREFIX "" SUFFIX ".exe" )
  SET_PROPERTY( TARGET ${name} PROPERTY
    LINK_FLAGS 
      "-B${LIBRARY_OUTPUT_PATH} -qnolinkcmds -T linkcmds -specs=bsp_specs -qrtems -Wl,-Ttext,0x00100000 -nodefaultlibs"
  )
  TARGET_LINK_LIBRARIES( ${name}
    -Wl,--start-group
    c gcc stdc++
    rtems_c_bsp	
    rtems_ftpd	
    rtems_mghttpd	
    rtems_sapi
    rtems_c_cpu	
    rtems_libblock	
    rtems_misc	
    rtems_score
    rtems_c_support	
    rtems_libchip	
    rtems_network	
    rtems_scorecpu
    rtems_calloc	
    rtems_libcrypt	
    rtems_posix	
    rtems_telnetd
    rtems_dev	
    rtems_libcsupport	
    rtems_pppd
    rtems_fs	
    rtems_libi2c	
    rtems_rtems
    rtems_libmd
    -Wl,--end-group
  )
ENDFUNCTION()
