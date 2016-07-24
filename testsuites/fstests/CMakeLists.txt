# TODO (snob): support JFFS2

ADD_DEFINITIONS( -DHAVE_CONFIG_H )
CONFIGURE_FILE( config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )

SET( RFS_SRC
  support/ramdisk_support.c
  support/fstest_support.c
  mrfs_support/fs_support.c
)

SET( IMFS_SRC
  support/fstest_support.c
  imfs_support/fs_support.c
)

SET( MIMFS_SRC
  support/fstest_support.c
  mimfs_support/fs_support.c
)

SET( DOSFS_SRC
  support/fstest_support.c
  mdosfs_support/fs_support.c
  support/ramdisk_support
)

FUNCTION( RFS_TEST name )
  RTEMS_C_EXECUTABLE( ${name} ${ARGN} ${RFS_SRC} )
  TARGET_INCLUDE_DIRECTORIES( ${name} PRIVATE
    mrfs_support
    support
    ../psxtests/include
  )
ENDFUNCTION()

FUNCTION( IMFS_TEST name )
  RTEMS_C_EXECUTABLE( ${name} ${ARGN} ${IMFS_SRC} )
  TARGET_INCLUDE_DIRECTORIES( ${name} PRIVATE
    imfs_support
    support
    ../psxtests/include
  )
ENDFUNCTION()

FUNCTION( MIMFS_TEST name )
  RTEMS_C_EXECUTABLE( ${name} ${ARGN} ${MIMFS_SRC} )
  TARGET_INCLUDE_DIRECTORIES( ${name} PRIVATE
    mimfs_support
    support
    ../psxtests/include
  )
ENDFUNCTION()

FUNCTION( DOSFS_TEST name )
  RTEMS_C_EXECUTABLE( ${name} ${ARGN} ${DOSFS_SRC} )
  TARGET_INCLUDE_DIRECTORIES( ${name} PRIVATE
    mdosfs_support
    support
    ../psxtests/include
  )
ENDFUNCTION()

RTEMS_C_EXECUTABLE( fsbdpart01 fsbdpart01/init.c )
RTEMS_C_EXECUTABLE( fsdosfssync01 fsdosfssync01/init.c )
RTEMS_C_EXECUTABLE( fsimfsconfig03 fsimfsconfig03/init.c )
RTEMS_C_EXECUTABLE( fsimfsconfig02 fsimfsconfig02/init.c )
RTEMS_C_EXECUTABLE( fsimfsconfig01 fsimfsconfig01/init.c )
RTEMS_C_EXECUTABLE( fsdosfsname01 fsdosfsname01/init.c )
RTEMS_C_EXECUTABLE( fsdosfswrite01 fsdosfswrite01/init.c )
RTEMS_C_EXECUTABLE( fsdosfsformat01 fsdosfsformat01/init.c )
RTEMS_C_EXECUTABLE( fsfseeko01 fsfseeko01/init.c )
RFS_TEST( fsrfsbitmap01 fsrfsbitmap01/test.c )
RTEMS_C_EXECUTABLE( fsnofs01 fsnofs01/init.c )
RTEMS_C_EXECUTABLE( fsimfsgeneric01 fsimfsgeneric01/init.c )
IMFS_TEST( imfs_fserror fserror/test.c )
IMFS_TEST( imfs_fslink fslink/test.c )
IMFS_TEST( imfs_fspatheval fspatheval/test.c )
IMFS_TEST( imfs_fspermission fspermission/test.c )
IMFS_TEST( imfs_fsrdwr fsrdwr/init.c )
IMFS_TEST( imfs_fsscandir01 fsscandir01/init.c )
IMFS_TEST( imfs_fssymlink fssymlink/test.c )
IMFS_TEST( imfs_fstime fstime/test.c )
IF( RTEMS_JFFS2 )
# RTEMS_C_EXECUTABLE( jffs2_fserror jffs2_fserror/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fslink jffs2_fslink/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fspatheval jffs2_fspatheval/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fspermission jffs2_fspermission/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fsrdwr jffs2_fsrdwr/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fsscandir01 jffs2_fsscandir01/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fssymlink jffs2_fssymlink/init.c )
# RTEMS_C_EXECUTABLE( jffs2_fstime jffs2_fstime/init.c )
ENDIF()
IF( RTEMS_DOSFS )
  DOSFS_TEST( mdosfs_fserror fserror/test.c )
  DOSFS_TEST( mdosfs_fspatheval fspatheval/test.c )
  DOSFS_TEST( mdosfs_fsrdwr fsrdwr/init.c )
  DOSFS_TEST( mdosfs_fsstatvfs fsstatvfs/test.c )
  DOSFS_TEST( mdosfs_fsscandir01 fsscandir01/init.c )
  DOSFS_TEST( mdosfs_fstime fstime/test.c )
ENDIF()
MIMFS_TEST( mimfs_fserror fserror/test.c )
MIMFS_TEST( mimfs_fslink fslink/test.c )
MIMFS_TEST( mimfs_fspatheval fspatheval/test.c )
MIMFS_TEST( mimfs_fspermission fspermission/test.c )
MIMFS_TEST( mimfs_fsrdwr fsrdwr/init.c )
MIMFS_TEST( mimfs_fsscandir01 fsscandir01/init.c )
MIMFS_TEST( mimfs_fssymlink fssymlink/test.c )
MIMFS_TEST( mimfs_fstime fstime/test.c )
MIMFS_TEST( mimfs_fsrename fsrename/test.c )
RFS_TEST( mrfs_fserror fserror/test.c )
RFS_TEST( mrfs_fslink fslink/test.c )
RFS_TEST( mrfs_fspatheval fspatheval/test.c )
RFS_TEST( mrfs_fspermission fspermission/test.c )
RFS_TEST( mrfs_fsrdwr fsrdwr/init.c )
RFS_TEST( mrfs_fsscandir01 fsscandir01/init.c )
RFS_TEST( mrfs_fssymlink fssymlink/test.c )
RFS_TEST( mrfs_fstime fstime/test.c )
RFS_TEST( mrfs_fsfpathconf fsfpathconf/test.c )

