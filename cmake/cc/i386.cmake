SET( CMAKE_SYSTEM_NAME Generic )
SET( CMAKE_C_COMPILER i386-rtems-gcc )
SET( CMAKE_CXX_COMPILER i386-rtems-g++ )
SET( CMAKE_ASM_COMPILER i386-rtems-gcc )

SET( CMAKE_FIND_ROOT_PATH )

SET( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
SET( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
SET( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )

SET_PROPERTY( GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS FALSE )

SET( RTEMS_DEFAULT_TARGET pc386 )