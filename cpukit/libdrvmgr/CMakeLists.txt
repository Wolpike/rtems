SET( LIBDRVMGR_SRC
  drvmgr.c
  drvmgr.h
  drvmgr_by_name.c
  drvmgr_by_id.c
  drvmgr_dev_by_name.c
  drvmgr_drvinf.c
  drvmgr_init.c
  drvmgr_confdefs.h
  drvmgr_for_each_dev.c
  drvmgr_for_each_list_dev.c
  drvmgr_func.c
  drvmgr_func_call.c
  drvmgr_list.c
  drvmgr_list.h
  drvmgr_lock.c
  drvmgr_print.c
  drvmgr_res.c
  drvmgr_rw.c
  drvmgr_translate.c
  drvmgr_translate_check.c
  drvmgr_unregister.c
)
ADD_LIBRARY( rtems_libdrvmgr ${LIBDRVMGR_SRC} )
ADD_DEPENDENCIES( rtems_libdrvmgr rtems_preinstall_headers )
