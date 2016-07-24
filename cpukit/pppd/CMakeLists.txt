PREINSTALL_HEADERS( rtems
  rtemspppd.h
  rtemsdialer.h
)

SET( PPPD_SRC
  auth.c 
  ccp.c 
  chap.c 
  chap_ms.c 
  chat.c 
  demand.c 
  fsm.c
  ipcp.c 
  lcp.c 
  magic.c 
  options.c 
  upap.c 
  utils.c 
  sys-rtems.c
  rtemsmain.c 
  rtemspppd.c
)

ADD_LIBRARY( rtems_pppd ${PPPD_SRC} )
# TARGET_INCLUDE_DIRECTORIES( rtems_pppd PRIVATE ../libmd )
TARGET_COMPILE_DEFINITIONS( rtems_pppd PRIVATE -D__BSD_VISIBLE )
ADD_DEPENDENCIES( rtems_pppd rtems_preinstall_headers )
