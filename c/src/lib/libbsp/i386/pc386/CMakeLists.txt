# bsopts.h

OPTION( BSP_IS_EDISON "Intel Edison BSP" FALSE )
RTEMS_BOOL_EXPR( NOT_EDISON NOT BSP_IS_EDISON )
OPTION( 
  BSP_ENABLE_VGA 
  "enable VGA and keyboard console support" 
  OFF
)
OPTION( BSP_ENABLE_COM1_COM4 "COM1..COM4 support is enable" ON )
OPTION( BSP_ENABLE_IDE "enable IDE support" ${NOT_EDISON} )
OPTION( USE_COM1_AS_CONSOLE "setup console on COM1" FALSE )
OPTION( IDE_USE_PRIMARY_INTERFACE "use primary IDE interface" ON )
OPTION( IDE_USE_SECONDARY_INTERFACE "use secondary IDE interface" OFF )
OPTION( BSP_VIDEO_80x50 "set VGA display to 80x50" OFF )
OPTION( CLOCK_DRIVER_USE_TSC "use TSC register for clock" OFF )
OPTION( CLOCK_DRIVER_USE_8254 "use 8254 chip for clock" OFF )
OPTION( USE_CIRRUS_GD5446 "enable Cirrus GD5446" OFF )
OPTION( USE_VGA "simple VGA driver" OFF )
RTEMS_BOOL_EXPR( BSP_TMP NOT USE_CIRRUS_GD5446 AND NOT USE_VGA )
OPTION( USE_VBE_RM "use Vesa Bios Extensions" ${BSP_TMP} )
SET( 
  NUM_APP_DRV_GDT_DESCRIPTORS 2 CACHE 
  STRING "GDT descriptors count"
)

CMAKE_DEPENDENT_OPTION( 
  BSP_HAS_SMP "Enable BSP support for SMP" TRUE "RTEMS_SMP" FALSE )

IF( CLOCK_DRIVER_USE_TSC AND CLOCK_DRIVER_USE_8254 )
  MESSAGE( FATAL "pc386 both TSC and 8254 specified for clock driver" )
ENDIF()

IF( USE_VBE_RM AND BSP_ENABLE_VGA )
  MATH( EXPR 
    NUM_APP_DRV_GDT_DESCRIPTORS "${NUM_APP_DRV_GDT_DESCRIPTORS}+2" )
ENDIF()

RTEMS_BSP_CLEANUP_OPTIONS( ON ON OFF )
CONFIGURE_FILE( 
  bspopts.h.cmake ${RTEMS_PREINSTALL_DIRECTORY}/bspopts.h
)

RTEMS_COPY_TO_LIB( bsp_specs bsp_specs )
RTEMS_COPY_TO_LIB( linkcmds startup/linkcmds )

PREINSTALL_HEADERS_ROOT( 
  include/bsp.h
  include/tm27.h
  include/crt.h
  ../../shared/include/coverhd.h
  ../../i386/shared/comm/i386_io.h
  ../../i386/shared/pci/pcibios.h
  ../../i386/shared/comm/uart.h
)

PREINSTALL_HEADERS( bsp
  ../../shared/include/bootcard.h
  ../../i386/shared/irq/irq.h
  ../../i386/shared/irq/irq_asm.h
  ../../i386/shared/comm/tty_drv.h
  ../../i386/shared/realmode_int/realmode_int.h
  ../../shared/include/irq-generic.h
  ../../shared/include/irq-info.h
  console/rtd316.h
  console/exar17d15x.h
  include/tblsizes.h
)

PREINSTALL_HEADERS( rtems 
  ../../shared/console_private.h
)

SET( BSP_SRC
  clock/todcfg.c
  ../../shared/tod.c
  console/serial_mouse_config.c
  ../../i386/shared/comm/uart.c
  ../../i386/shared/comm/tty_drv.c
  ../../i386/shared/realmode_int/realmode_int.c
  ../../shared/console.c
  console/console_select.c
  ../../shared/console_read.c
  ../../shared/console_write.c
  console/console_control.c
  console/conscfg.c
  console/printk_support.c
  console/exar17d15x.c
  console/rtd316.c
  ../../i386/shared/comm/i386-stub.c
  ../../i386/shared/comm/i386-stub-glue.c
  ../../i386/shared/comm/gdb_glue.c
  ../../shared/gnatinstallhandler.c
  ../../i386/shared/pci/pcibios.c
  ../../shared/bsplibc.c
  ../../shared/bsppost.c
  ../../shared/bsppredriverhook.c
  startup/bspgetworkarea.c
  ../../shared/bsppretaskinghook.c
  startup/bspstart.c
  startup/bspcmdline.c
  ../../shared/bspclean.c
  startup/bspreset.c
  ../../i386/shared/irq/idt.c
  ../../i386/shared/irq/irq.c
  ../../i386/shared/irq/irq_init.c
  ../../shared/bootcard.c
  ../../shared/sbrk.c
  startup/ldsegs.S
  ../../i386/shared/irq/irq_asm.S
  ../../shared/src/irq-default-handler.c
  ../../shared/src/irq-generic.c
  ../../shared/src/irq-legacy.c
  ../../shared/src/irq-info.c
  ../../shared/src/irq-shell.c
  ../../shared/src/irq-server.c
  timer/timer.c
  timer/timerisr.S
)

IF( BSP_ENABLE_IDE )
  LIST( APPEND BSP_SRC
    ide/ide.c
    ide/idecfg.c
  )
ENDIF()

IF( BSP_ENABLE_VGA )
  PREINSTALL_HEADERS( rtems
    console/keyboard.h
    console/kd.h
    console/ps2_drv.h
    console/vgacons.h
  )
  PREINSTALL_HEADERS( bsp
    console/fb_default_mode.h
  )
  LIST( APPEND BSP_SRC
    console/inch.c
    console/outch.c
    console/defkeymap.c
    console/keyboard.c
    console/pc_keyb.c
    console/ps2_mouse.c
    console/vgainit.c
    console/vt.c
    console/videoAsm.S
    console/kbd_parser.c
    console/vgacons.c
  )
  IF( USE_VGA )
    LIST( APPEND BSP_SRC console/fb_vga.c )
  ENDIF()
  IF( USE_CIRRUS_GD5446 )
    LIST( APPEND BSP_SRC console/fb_cirrus.c )
  ENDIF()
  IF( USE_VBE_RM )
    PREINSTALL_HEADERS_ROOT( include/edid.h )
    PREINSTALL_HEADERS( bsp
      include/vbe3.h
      include/fb_vesa.h
    )
    LIST( APPEND BSP_SRC console/fb_vesa_rm.c )
  ENDIF()
ENDIF()

IF( RTEMS_SMP )
  PREINSTALL_HEADERS( bsp
    ../../i386/shared/irq/apic.h
    ../../i386/shared/smp/smp-imps.h
  )
  LIST( APPEND BSP_SRC 
    ../../i386/shared/smp/getcpuid.c
    ../../i386/shared/smp/smp-imps.c
  )
  # TODO
  # appcpustart.$(OBJEXT): start/start16.S
	# $(CPPASCOMPILE) $(AM_CPPFLAGS) -DSMP_SECONDARY_CORE -o $@ -c $<
  #
  # appstart.$(OBJEXT): appcpustart.$(OBJEXT)
  #   $(LD) -N -T $(top_srcdir)/startup/linkcmds \
  #       -Ttext 0x70000 -e app_processor_start -nostdlib \
  #       -o appstart_tmp.exe $<
  #   $(OBJCOPY) -O binary appstart_tmp.exe appstart.bin
  #   $(OBJCOPY) -I binary -O elf32-i386 -B i386 appstart.bin $@
  # libbsp_a_LIBADD += appstart.$(OBJEXT)
ENDIF()

IF( RTEMS_NETWORKING )
  PREINSTALL_HEADERS_ROOT( include/wd80x3.h )
  SET( NET_SRC
    ne2000/ne2000.c
    wd8003/wd8003.c
    3c509/3c509.c
    3c509/elink.c
  )
  SET_SOURCE_FILES_PROPERTIES( ${NET_SRC} PROPERTIES
    COMPILE_FLAGS -D__INSIDE_RTEMS_BSD_TCPIP_STACK__
  )
  LIST( APPEND BSP_SRC ${NET_SRC} )
ENDIF()

IF( BSP_IS_EDISON )
  LIST( APPEND BSP_SRC
    ../../shared/clock_driver_simidle.c
    console/console_edison.c
  )
ELSE()
  LIST( APPEND BSP_SRC
    clock/ckinit.c
  )
ENDIF()

# TODO
# EXTRA_DIST = start/start16.S
# start16.$(OBJEXT): start/start16.S
# 	$(CPPASCOMPILE) $(AM_CPPFLAGS) -DHEADERADDR=$(HEADERADDR) -o $@ -c $<
# 
# start16-elf32.$(OBJEXT): start16.$(OBJEXT)
# 	$(LD) -N -T $(top_srcdir)/startup/linkcmds -Ttext $(START16ADDR) -e start16 -nostdlib
# 	  --oformat=elf32-i386
# 	-o $@ $<
# 
# start16.bin: start16-elf32.$(OBJEXT)
# 	$(OBJCOPY) -O binary $< $@
# CLEANFILES += start16.bin

ADD_CUSTOM_COMMAND(
  OUTPUT "${LIBRARY_OUTPUT_PATH}/start.o"
  DEPENDS start/start.S
  COMMAND ${CMAKE_C_COMPILER} -I${RTEMS_PREINSTALL_DIRECTORY} -c
          -DASM ${CMAKE_CURRENT_SOURCE_DIR}/start/start.S
          -o ${LIBRARY_OUTPUT_PATH}/start.o
)
ADD_CUSTOM_TARGET( start.o DEPENDS ${LIBRARY_OUTPUT_PATH}/start.o )

ADD_LIBRARY( rtems_c_bsp ${BSP_SRC} )
ADD_DEPENDENCIES( rtems_c_bsp 
  rtems_preinstall_headers 
  start.o 
  bsp_specs
  linkcmds)
ADD_DEPENDENCIES( start.o rtems_preinstall_headers )

