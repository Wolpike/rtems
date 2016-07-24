# TODO: Add nfsclient

SET( LIBDEFAULTFS_SRC
  src/defaults/default_clone.c
  src/defaults/default_are_nodes_equal.c
  src/defaults/default_lock_and_unlock.c
  src/defaults/default_eval_path.c
  src/defaults/default_fchmod.c 
  src/defaults/default_freenode.c
  src/defaults/default_fsync.c
  src/defaults/default_fsync_success.c
  src/defaults/default_link.c
  src/defaults/default_read.c
  src/defaults/default_rmnod.c
  src/defaults/default_chown.c
  src/defaults/default_fcntl.c
  src/defaults/default_ftruncate.c
  src/defaults/default_lseek.c
  src/defaults/default_lseek_file.c
  src/defaults/default_lseek_directory.c
  src/defaults/default_readlink.c
  src/defaults/default_statvfs.c
  src/defaults/default_utime.c
  src/defaults/default_fstat.c
  src/defaults/default_ioctl.c
  src/defaults/default_mount.c
  src/defaults/default_rename.c
  src/defaults/default_symlink.c
  src/defaults/default_write.c
  src/defaults/default_unmount.c
  src/defaults/default_open.c
  src/defaults/default_close.c
  src/defaults/default_fsunmount.c
  src/defaults/default_mknod.c
  src/defaults/default_ftruncate_directory.c
  src/defaults/default_handlers.c
  src/defaults/default_ops.c
  src/defaults/default_kqfilter.c
  src/defaults/default_poll.c
  src/defaults/default_readv.c
  src/defaults/default_writev.c
)

SET( LIBIMFS_SRC
  src/imfs/deviceio.c
  src/imfs/imfs_chown.c
  src/imfs/imfs_config.c
  src/imfs/imfs_creat.c
  src/imfs/imfs_eval.c
  src/imfs/imfs_fchmod.c
  src/imfs/imfs_dir.c
  src/imfs/imfs_dir_default.c
  src/imfs/imfs_dir_minimal.c
  src/imfs/imfs_fifo.c
  src/imfs/imfs_make_generic_node.c
  src/imfs/imfs_fsunmount.c
  src/imfs/imfs_handlers_device.c
  src/imfs/imfs_init.c
  src/imfs/imfs_initsupp.c
  src/imfs/imfs_link.c
  src/imfs/imfs_load_tar.c
  src/imfs/imfs_linfile.c
  src/imfs/imfs_mknod.c
  src/imfs/imfs_mount.c
  src/imfs/imfs_rename.c
  src/imfs/imfs_rmnod.c
  src/imfs/imfs_stat.c
  src/imfs/imfs_stat_file.c
  src/imfs/imfs_symlink.c
  src/imfs/imfs_unmount.c
  src/imfs/imfs_utime.c
  src/imfs/ioman.c
  src/imfs/imfs_memfile.c
  src/pipe/fifo.c src/pipe/pipe.c
)

SET( LIBDEVFS_SRC
  src/devfs/devfs_init.c
  src/devfs/devfs_eval.c
  src/devfs/devfs_mknod.c
  src/devfs/devfs_show.c
  src/devfs/devopen.c
  src/devfs/devread.c
  src/devfs/devwrite.c
  src/devfs/devclose.c
  src/devfs/devioctl.c
  src/devfs/devstat.c
)

IF( RTEMS_DOSFS )
  SET( LIBDOSFS_SRC
    src/dosfs/fat.c
    src/dosfs/fat_fat_operations.c
    src/dosfs/fat_file.c
    src/dosfs/msdos_create.c
    src/dosfs/msdos_dir.c
    src/dosfs/msdos_eval.c
    src/dosfs/msdos_file.c
    src/dosfs/msdos_free.c
    src/dosfs/msdos_fsunmount.c
    src/dosfs/msdos_handlers_dir.c
    src/dosfs/msdos_handlers_file.c
    src/dosfs/msdos_init.c
    src/dosfs/msdos_initsupp.c
    src/dosfs/msdos_misc.c
    src/dosfs/msdos_mknod.c
    src/dosfs/msdos_rmnod.c
    src/dosfs/msdos_statvfs.c
    src/dosfs/msdos_conv_default.c
    src/dosfs/msdos_conv_utf8.c
    src/dosfs/msdos_conv.c
    src/dosfs/msdos_format.c
    src/dosfs/msdos_rename.c
  )
ENDIF()

SET( LIBRFS_SRC
  src/rfs/rtems-rfs-bitmaps.c
  src/rfs/rtems-rfs-block.c
  src/rfs/rtems-rfs-buffer-bdbuf.c
  src/rfs/rtems-rfs-buffer.c
  src/rfs/rtems-rfs-dir-hash.c
  src/rfs/rtems-rfs-file.c
  src/rfs/rtems-rfs-group.c
  src/rfs/rtems-rfs-inode.c
  src/rfs/rtems-rfs-rtems-dev.c
  src/rfs/rtems-rfs-rtems-utils.c
  src/rfs/rtems-rfs-rtems.c
  src/rfs/rtems-rfs-shell.c
  src/rfs/rtems-rfs-dir.c
  src/rfs/rtems-rfs-file-system.c
  src/rfs/rtems-rfs-format.c
  src/rfs/rtems-rfs-link.c
  src/rfs/rtems-rfs-mutex.c
  src/rfs/rtems-rfs-rtems-dir.c
  src/rfs/rtems-rfs-rtems-file.c
  src/rfs/rtems-rfs-trace.c
)

ADD_LIBRARY( rtems_fs 
  ${LIBDEFAULTFS_SRC} 
  ${LIBDEVFS_SRC}
  ${LIBIMFS_SRC}
  ${LIBDOSFS_SRC}
  ${LIBRFS_SRC}
)
ADD_DEPENDENCIES( rtems_fs rtems_preinstall_headers )

SET( LIBJFFS2_SRC
  src/jffs2/src/build.c
  src/jffs2/src/compat-crc32.c
  src/jffs2/src/compat-rbtree.c
  src/jffs2/src/compr.c
  src/jffs2/src/compr_rtime.c
  src/jffs2/src/compr_zlib.c
  src/jffs2/src/debug.c
  src/jffs2/src/dir-rtems.c
  src/jffs2/src/erase.c
  src/jffs2/src/flashio.c
  src/jffs2/src/fs-rtems.c
  src/jffs2/src/gc.c
  src/jffs2/src/malloc-rtems.c
  src/jffs2/src/nodelist.c
  src/jffs2/src/nodemgmt.c
  src/jffs2/src/read.c
  src/jffs2/src/readinode.c
  src/jffs2/src/scan.c
  src/jffs2/src/write.c
)
# ADD_LIBRARY( libjffs2 ${LIBJFFS2_SRC} )
# TARGET_COMPILE_DEFINITIONS( libjffs2 PRIVATE
#   -Wno-pointer-sign
#   -D__ECOS
#   -DKBUILD_MODNAME="JFFS2"
# )
# TARGET_INCLUDE_DIRECTORIES( libjffs2 PRIVATE jffs2/include )
# ADD_DEPENDENCIES( libjffs2 rtems_preinstall_headers )
