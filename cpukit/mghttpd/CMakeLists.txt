PREINSTALL_HEADERS( mghttpd mongoose.h )
ADD_LIBRARY( rtems_mghttpd mongoose.c )
TARGET_COMPILE_DEFINITIONS( rtems_mghttpd PRIVATE
  -DNO_SSL -DNO_POPEN -DNO_CGI -DUSE_WEBSOCKET
)
ADD_DEPENDENCIES( rtems_mghttpd rtems_preinstall_headers )
