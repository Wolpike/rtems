PREINSTALL_HEADERS( bsp
  shared/include/default-initial-extension.h
  shared/include/fatal.h
  shared/include/console-termios.h
)

SUBDIRS( "${RTEMS_CPU}/${RTEMS_BSP_FAMILY}" )
