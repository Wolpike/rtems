# TODO: libgnat, librpc, zlib, jffs2

# create cpuopts.h
CONFIGURE_FILE( cpuopts.h.cmake
  ${RTEMS_PREINSTALL_DIRECTORY}/rtems/score/cpuopts.h
)

# create config.h

# Those are checked in libcsupport, but not defined in configure.ac
# CHECK_FUNCTION_EXISTS( calloc HAVE_CALLOC )
# CHECK_FUNCTION_EXISTS( fcntl_r HAVE_FCNTL_R )
# CHECK_FUNCTION_EXISTS( fstat_r HAVE_FSTAT_R )
# CHECK_FUNCTION_EXISTS( gettimeofday HAVE_GETTIMEOFDAY )
# CHECK_FUNCTION_EXISTS( issetugid HAVE_ISSETUGID )
# CHECK_FUNCTION_EXISTS( tcgetpgrp HAVE_TCGETPGRP )
# CHECK_FUNCTION_EXISTS( _calloc_r HAVE__CALLOC_R )
# CHECK_FUNCTION_EXISTS( _close_r HAVE__CLOSE_R )
# CHECK_FUNCTION_EXISTS( _free_r HAVE__FREE_R )
# CHECK_FUNCTION_EXISTS( _getpid_r HAVE__GETPID_R )
# CHECK_FUNCTION_EXISTS( _gettimeofday_r HAVE__GETTIMEOFDAY_R )
# CHECK_FUNCTION_EXISTS( _isatty_r HAVE__ISATTY_R )
# CHECK_FUNCTION_EXISTS( _lseek_r HAVE__LSEEK_R )
# CHECK_FUNCTION_EXISTS( _malloc_r HAVE__MALLOC_R )
# CHECK_FUNCTION_EXISTS( _open_r HAVE__OPEN_R )
# CHECK_FUNCTION_EXISTS( _read_r HAVE__READ_R )
# CHECK_FUNCTION_EXISTS( _realloc_r HAVE__REALLOC_R )
# CHECK_FUNCTION_EXISTS( _rename_r HAVE__RENAME_R )
# CHECK_FUNCTION_EXISTS( __assert_func HAVE___ASSERT_FUNC )

# Those are checked in libmisc/uuid, but not defined in configure.ac
# CHECK_INCLUDE_FILE( sys/socket.h HAVE_SYS_SOCKET_H )
# CHECK_INCLUDE_FILE( sys/sockio.h HAVE_SYS_SOCKIO_H )
# CHECK_INCLUDE_FILE( sys/time.h HAVE_SYS_TIME_H )
# Note: There others...


CONFIGURE_FILE( config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )

PREINSTALL_HEADERS_ROOT(
  include/crypt.h
  include/memory.h
)

PREINSTALL_HEADERS( uuid libmisc/uuid/uuid.h )
PREINSTALL_HEADERS( utf8proc libmisc/utf8proc/utf8proc.h )

PREINSTALL_HEADERS( sys
  posix/include/sys/mman.h
  libcsupport/include/sys/ioccom.h
  libcsupport/include/sys/event.h
  libcsupport/include/sys/filio.h
  libcsupport/include/sys/ioctl.h
  libcsupport/include/sys/poll.h
  libcsupport/include/sys/statvfs.h
  libcsupport/include/sys/sockio.h
  libcsupport/include/sys/ttycom.h
  libcsupport/include/sys/termios.h
  libcsupport/include/sys/utsname.h
  include/sys/endian.h
  include/sys/uio.h
  include/sys/_iovec.h
  include/sys/priority.h
)

PREINSTALL_HEADERS( rtems
  include/rtems/bspIo.h
  include/rtems/userenv.h
  include/rtems/fs.h
  include/rtems/concat.h
  include/rtems/status-checks.h
  include/rtems/btimer.h
  include/rtems/endian.h
  include/rtems/irq.h
  include/rtems/irq-extension.h
  libfs/src/imfs/imfs.h
  libfs/src/devfs/devfs.h
  libfs/src/pipe/pipe.h
  libfs/src/rfs/rtems-rfs.h
  libfs/src/rfs/rtems-rfs-format.h
  libfs/src/rfs/rtems-rfs-shell.h
  libfs/src/jffs2/include/rtems/jffs2.h
  libblock/include/rtems/bdbuf.h
  libblock/include/rtems/blkdev.h
  libblock/include/rtems/diskdevs.h
  libblock/include/rtems/flashdisk.h
  libblock/include/rtems/ramdisk.h
  libblock/include/rtems/nvdisk.h
  libblock/include/rtems/nvdisk-sram.h
  libblock/include/rtems/sparse-disk.h
  libblock/include/rtems/ide_part_table.h
  libblock/include/rtems/bdpart.h
  libblock/include/rtems/media.h
  libmisc/bspcmdline/bspcmdline.h
  libmisc/capture/capture.h
  libmisc/capture/capture-cli.h
  libmisc/capture/captureimpl.h
  libmisc/cpuuse/cpuuse.h
  libmisc/devnull/devnull.h
  libmisc/devnull/devzero.h
  libmisc/dumpbuf/dumpbuf.h
  libmisc/monitor/monitor.h
  libmisc/fb/fb.h
  libmisc/fb/mw_uid.h
  libmisc/mouse/mouse_parser.h
  libmisc/mouse/serial_mouse.h
  libqos/qreslib.h
  libmisc/redirector/stdio-redirect.h
  libmisc/stringto/stringto.h
  libmisc/testsupport/test.h
  libi2c/libi2c.h
  libmisc/stackchk/stackchk.h
  libmisc/untar/untar.h
  libmisc/fsmount/fsmount.h

)

PREINSTALL_HEADERS( rtems/rfs
  libfs/src/rfs/rtems-rfs-bitmaps.h
  libfs/src/rfs/rtems-rfs-block-pos.h
  libfs/src/rfs/rtems-rfs-block.h
  libfs/src/rfs/rtems-rfs-buffer.h
  libfs/src/rfs/rtems-rfs-data.h
  libfs/src/rfs/rtems-rfs-dir.h
  libfs/src/rfs/rtems-rfs-dir-hash.h
  libfs/src/rfs/rtems-rfs-file.h
  libfs/src/rfs/rtems-rfs-file-system-fwd.h
  libfs/src/rfs/rtems-rfs-file-system.h
  libfs/src/rfs/rtems-rfs-group.h
  libfs/src/rfs/rtems-rfs-inode.h
  libfs/src/rfs/rtems-rfs-link.h
  libfs/src/rfs/rtems-rfs-mutex.h
  libfs/src/rfs/rtems-rfs-trace.h
)

PREINSTALL_HEADERS( rtems/trace
  libmisc/capture/rtems-trace-buffer-vars.h 
)

IF( RTEMS_SHELL )
  PREINSTALL_HEADERS( rtems
    libmisc/shell/shell.h
    libmisc/shell/shellconfig.h
  )
ENDIF()

IF( RTEMS_DOSFS )
  PREINSTALL_HEADERS( rtems libfs/src/dosfs/dosfs.h )
ENDIF()

IF( NOT RTEMS_LIBPCI )
  PREINSTALL_HEADERS( rtems include/rtems/pci.h )
ENDIF()

IF( RTEMS_NETWORKING )
  PREINSTALL_HEADERS( rtems/bsdnet
    libnetworking/rtems/bsdnet/servers.h
    libnetworking/rtems/bsdnet/_types.h
  )
  PREINSTALL_HEADERS( rtems ftpd/ftpd.h )
ENDIF()

IF( RTEMS_LIBDL )
  PREINSTALL_HEADERS_ROOT(
    libdl/dlfcn.h
    libdl/include/link.h
    libdl/include/link_elf.h
  )
  PREINSTALL_HEADERS( sys
    libdl/include/sys/cdefs_elf.h
    libdl/include/sys/exec_elf.h
  )
  PREINSTALL_HEADERS( machine 
    libdl/include/arch/${RTEMS_CPU}/machine/elf_machdep.h
  )
  PREINSTALL_HEADERS( rtems/rtl
    libdl/dlfcn-shell.h
    libdl/rtl.h libdl/rtl-allocator.h libdl/rtl-obj-fwd.h
    libdl/rtl-fwd.h libdl/rtl-obj.h libdl/rtl-obj-cache.h
    libdl/rtl-obj-comp.h libdl/rtl-unresolved.h
    libdl/rtl-indirect-ptr.h libdl/rtl-sym.h
    libdl/rap.h libdl/rap-shell.h
  )
ENDIF()

IF( RTEMS_SERDBG )
  PREINSTALL_HEADERS( rtems
    libmisc/serdbg/serdbgcnf.h
    libmisc/serdbg/serdbg.h
    libmisc/serdbg/termios_printk_cnf.h
    libmisc/serdbg/termios_printk.h
  )
ENDIF()

IF( RTEMS_DRVMGR )
  PREINSTALL_HEADERS( drvmgr
    libdrvmgr/drvmgr.h
    libdrvmgr/drvmgr_confdefs.h
    libdrvmgr/drvmgr_list.h
  )
ENDIF()

ADD_DEFINITIONS( -DHAVE_CONFIG_H )

SUBDIRS( 
  dev libcrypt rtems score sapi posix libcsupport libblock libfs libmd
  libi2c libmisc
)
IF( RTEMS_NETWORKING )
  SUBDIRS( libnetworking pppd )
ENDIF()
IF( RTEMS_LIBDL )
  SUBDIRS( libdl )
ENDIF()
IF( RTEMS_DRVMGR )
  SUBDIRS( libdrvmgr )
ENDIF()
IF( RTEMS_LIBPCI )
  SUBDIRS( libpci )
ENDIF()
IF( RTEMS_NETWORKING AND RTEMS_PTHREADS )
  SUBDIRS( mghttpd )
ENDIF()
IF( RTEMS_NETWORKING AND RTEMS_SHELL )
  SUBDIRS( telnetd ftpd )
ENDIF()
