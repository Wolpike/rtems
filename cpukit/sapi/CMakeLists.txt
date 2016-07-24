PREINSTALL_HEADERS( rtems
  include/confdefs.h
  include/rtems/bsd.h
  include/rtems/chain.h
  include/rtems/config.h
  include/rtems/counter.h
  include/rtems/extension.h
  include/rtems/extensionimpl.h
  include/rtems/fatal.h
  include/rtems/init.h
  include/rtems/io.h
  include/rtems/mptables.h
  include/rtems/cbs.h
  include/rtems/profiling.h
  include/rtems/rbheap.h
  include/rtems/rbtree.h
  include/rtems/scheduler.h
  include/rtems/sptables.h
  include/rtems/timecounter.h
  include/rtems/timespec.h
)

SET( SAPI_SRC
  src/debug.c
  src/extension.c
  src/extensioncreate.c
  src/extensiondelete.c
  src/extensionident.c
  src/fatal.c
  src/exinit.c 
  src/exshutdown.c
  src/io.c
  src/ioclose.c
  src/iocontrol.c
  src/iodata.c 
  src/ioinitialize.c
  src/ioopen.c
  src/ioread.c
  src/ioregisterdriver.c 
  src/iounregisterdriver.c
  src/iowrite.c
  src/posixapi.c
  src/rtemsapi.c
  src/extensiondata.c
  src/getversionstring.c
  src/chainappendnotify.c
  src/chaingetnotify.c
  src/chaingetwait.c
  src/chainprependnotify.c
  src/rbheap.c
  src/interrtext.c
  src/fatal2.c
  src/fatalsrctext.c
  src/chainsmp.c
  src/cpucounterconverter.c
  src/delayticks.c
  src/delaynano.c
  src/profilingiterate.c
  src/profilingreportxml.c
  src/tcsimpleinstall.c
)

ADD_LIBRARY( rtems_sapi ${SAPI_SRC} )
ADD_DEPENDENCIES( rtems_sapi rtems_preinstall_headers )
