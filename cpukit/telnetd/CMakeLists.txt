PREINSTALL_HEADERS( rtems
  pty.h
  telnetd.h
  passwd.h
)
SET( TELNETD_SRC
  check_passwd.c
  des.c
  pty.c
  telnetd.c
)
ADD_LIBRARY( rtems_telnetd ${TELNETD_SRC} )
ADD_DEPENDENCIES( rtems_telnetd rtems_preinstall_headers )
