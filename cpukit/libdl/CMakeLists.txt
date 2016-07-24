SET( LIBDL_SRC
  dlfcn-shell.c
  dlfcn.c
  fastlz.c
  rap-shell.c
  rap.c
  rtl.c
  rtl-alloc-heap.c
  rtl-allocator.c
  rtl-chain-iterator.c
  rtl-debugger.c
  rtl-elf.c
  rtl-error.c
  rtl-find-file.c
  rtl-obj-cache.c
  rtl-obj-comp.c
  rtl-obj.c
  rtl-rap.c
  rtl-shell.c
  rtl-string.c
  rtl-sym.c
  rtl-trace.c
  rtl-unresolved.c
  rtl-mdreloc-${RTEMS_CPU}.c
)
ADD_LIBRARY( rtems_libdl ${LIBDL_SRC} )
TARGET_COMPILE_DEFINITONS( rtems_libdl PRIVATE 
  -DRTEMS_RTL_RAP_LOADER=1 -DRTEMS_RTL_ELF_LOADER=1
)
ADD_DEPENDENCIES( rtems_libdl rtems_preinstall_headers )
