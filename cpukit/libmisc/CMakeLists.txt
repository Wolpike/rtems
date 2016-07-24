SET( MISC_SRC
  ## bspcmdline
  bspcmdline/bspcmdline_get.c
  bspcmdline/bspcmdline_getparam.c
  bspcmdline/bspcmdline_getparamraw.c
  bspcmdline/bspcmdline_getparamrhs.c
  ## capture
  capture/capture.c capture/capture-cli.c
  capture/capture_user_extension.c capture/capture_buffer.c
  capture/capture_support.c
  capture/rtems-trace-buffer-vars.c
  ## cpuuse
  cpuuse/cpuusagereport.c cpuuse/cpuusagereset.c
  cpuuse/cpuusagedata.c cpuuse/cpuusagetop.c
  ## devnull
  devnull/devnull.c
  devnull/devzero.c
  ## dummy
  dummy/default-configuration.c dummy/dummy-networking.c
  ## dumpbuf
  dumpbuf/dumpbuf.c
  ## monitor
  monitor/mon-command.c monitor/mon-symbols.c
  monitor/mon-prmisc.c monitor/mon-monitor.c monitor/mon-object.c
  monitor/mon-server.c monitor/mon-task.c monitor/mon-queue.c
  monitor/mon-driver.c monitor/mon-itask.c monitor/mon-extension.c
  monitor/mon-manager.c monitor/mon-config.c monitor/mon-part.c
  monitor/mon-region.c monitor/mon-sema.c monitor/mon-editor.c
  ## fb
  fb/mw_print.c fb/mw_uid.c
  ## mouse
  mouse/mouse_parser.c mouse/serial_mouse.c
  ## redirector
  redirector/stdio-redirect.c
  ## stackchk
  stackchk/check.c
  ## libuntar
  untar/untar.c
  ## stringto
  stringto/stringtodouble.c stringto/stringtofloat.c
  stringto/stringtolongdouble.c
  stringto/stringtoint.c stringto/stringtolong.c stringto/stringtolonglong.c
  stringto/stringtopointer.c stringto/stringtounsignedint.c
  stringto/stringtounsignedchar.c stringto/stringtounsignedlong.c
  stringto/stringtounsignedlonglong.c
  ## testsupport
  testsupport/testbeginend.c
  testsupport/testextension.c
  testsupport/testparallel.c
  ## fsmount
  fsmount/fsmount.c
  ## uuid
  uuid/clear.c uuid/compare.c uuid/copy.c uuid/gen_uuid.c
	uuid/isnull.c uuid/pack.c uuid/parse.c uuid/unpack.c uuid/unparse.c
	uuid/uuid_time.c
)

IF( RTEMS_SHELL )
  LIST( APPEND SHELL_SRC
    shell/cat_file.c shell/cmds.c shell/internal.h
    shell/main_alias.c shell/main_cat.c shell/main_cd.c shell/cmp-ls.c
    shell/main_chdir.c shell/main_chmod.c shell/main_chroot.c
    shell/main_cp.c shell/main_cpuuse.c shell/main_date.c shell/main_dir.c
    shell/main_echo.c shell/main_exit.c shell/main_halt.c shell/main_help.c
    shell/main_id.c shell/main_logoff.c shell/main_ln.c shell/main_ls.c
    shell/main_mallocinfo.c shell/main_md5.c shell/main_mdump.c
    shell/main_medit.c shell/main_mfill.c shell/main_mkdir.c
    shell/main_mount.c shell/main_mmove.c shell/main_msdosfmt.c
    shell/main_mv.c shell/main_perioduse.c shell/main_top.c
    shell/main_pwd.c shell/main_rm.c shell/main_rmdir.c shell/main_sleep.c
    shell/main_stackuse.c shell/main_tty.c shell/main_umask.c
    shell/main_unmount.c shell/main_blksync.c shell/main_whoami.c
    shell/shell.c shell/shell_cmdset.c shell/shell_getchar.c
    shell/shell_getprompt.c shell/shellconfig.c
    shell/shellconfig.h shell/shell.h shell/shell_makeargs.c
    shell/filemode.c shell/pwcache.c shell/print-ls.c
    shell/write_file.c shell/utils-cp.c  shell/utils-ls.c
    shell/err.c shell/errx.c shell/verr.c shell/vis.c
    shell/verrx.c shell/vwarn.c shell/vwarnx.c shell/warn.c shell/warnx.c
    shell/fts.c shell/print_heapinfo.c shell/main_wkspaceinfo.c
    shell/shell_script.c shell/login_prompt.c shell/login_check.c
    shell/fdisk.c shell/main_rtc.c
    shell/dd-args.c shell/main_dd.c shell/dd-conv.c shell/dd-conv_tab.c
    shell/dd-misc.c shell/dd-position.c
    shell/main_hexdump.c shell/hexdump-conv.c shell/hexdump-display.c
    shell/hexdump-odsyntax.c shell/hexdump-parse.c shell/hexsyntax.c
    shell/main_time.c shell/main_mknod.c
    shell/main_setenv.c shell/main_getenv.c shell/main_unsetenv.c
    shell/main_mkrfs.c shell/main_debugrfs.c shell/main_df.c
    shell/main_lsof.c shell/main_edit.c
    shell/main_blkstats.c shell/main_rtrace.c
    shell/shell-wait-for-input.c
    shell/main_cmdls.c
    shell/main_cmdchown.c
    shell/main_cmdchmod.c
    shell/main_profreport.c
  )
  IF( RTEMS_DRVMGR )
    LIST( APPEND SHELL_SRC shell/main_drvmgr.c )
  ENDIF()
  IF( RTEMS_LIBPCI )
    LIST( APPEND SHELL_SRC shell/main_pci.c )
  ENDIF()
  IF( RTEMS_NETWORKING )
    LIST( APPEND SHELL_SRC 
      shell/main_ifconfig.c shell/main_route.c shell/main_netstats.c
      shell/main_ping.c
    )
  ENDIF()
  LIST( APPEND MISC_SRC ${SHELL_SRC} )
  SET_SOURCE_FILES_PROPERTIES( ${SHELL_SRC} PROPERTIES
    COMPILE_FLAGS "-I${CMAKE_CURRENT_SOURCE_DIR}/shell"
  )
ENDIF()

IF( RTEMS_SERDBG )
  LIST( APPEND MISC_SRC 
    serdbg/serdbg.c
    serdbg/serdbgio.c
    serdbg/termios_printk.c
  )
ENDIF()

IF( RTEMS_NETWORKING )
  LIST( APPEND MISC_SRC 
    monitor/mon-network.c
  )
ENDIF()

IF( RTEMS_MULTIPROCESSING )
  LIST( APPEND MISC_SRC
    monitor/mon-mpci.c
  )
ENDIF()

IF( RTEMS_LIBUTF8 )
  LIST( APPEND MISC_SRC
    utf8proc/utf8proc.c
  )
ENDIF()

ADD_LIBRARY( rtems_misc ${MISC_SRC} )
ADD_DEPENDENCIES( rtems_misc rtems_preinstall_headers )
