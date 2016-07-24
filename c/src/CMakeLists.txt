# global options

OPTION( 
  BSP_DIRTY_MEMORY 
  "Fill heap and RTEMS workspace with non-zero pattern"
  OFF
)
SUBDIRS( support lib/libbsp lib/libcpu libchip )
