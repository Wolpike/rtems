PREINSTALL_HEADERS( libchip
  display/disp_hcms29xx.h
  flash/am29lv160.h
  ide/ata.h 
  ide/ide_ctrl_cfg.h 
  ide/ide_ctrl.h
  ide/ide_ctrl_io.h 
  ide/ata_internal.h
  rtc/rtc.h 
  rtc/icm7170.h 
  rtc/m48t08.h
  rtc/mc146818a.h
  rtc/ds1375-rtc.h
  i2c/i2c-ds1621.h
	i2c/i2c-2b-eeprom.h
	i2c/i2c-sc620.h
	i2c/spi-memdrv.h
	i2c/spi-flash-m25p40.h
	i2c/spi-fram-fm25l256.h
	i2c/spi-sd-card.h
  serial/mc68681.h
  serial/ns16550.h
  serial/z85c30.h
  serial/serial.h 
  serial/sersupp.h
  serial/ns16550_p.h
)

SET( LIBCHIP_SRC
  display/disp_hcms29xx.c 
  display/font_hcms29xx.c
  flash/am29lv160.c
  ide/ata.c
  ide/ata_util.c
  ide/ide_controller.c
  rtc/rtcprobe.c 
  rtc/icm7170.c 
  rtc/icm7170_reg.c
  rtc/icm7170_reg2.c 
  rtc/icm7170_reg4.c 
  rtc/icm7170_reg8.c 
  rtc/m48t08.c
  rtc/m48t08_reg.c 
  rtc/m48t08_reg2.c 
  rtc/m48t08_reg4.c 
  rtc/m48t08_reg8.c
  rtc/mc146818a.c 
  rtc/mc146818a_ioreg.c 
  rtc/ds1375.c
  i2c/i2c-ds1621.c
	i2c/i2c-2b-eeprom.c
	i2c/i2c-sc620.c
	i2c/spi-memdrv.c
	i2c/spi-flash-m25p40.c
	i2c/spi-fram-fm25l256.c
	i2c/spi-sd-card.c
  serial/mc68681.c serial/mc68681_baud.c
  serial/mc68681_reg.c 
  serial/mc68681_reg2.c 
  serial/mc68681_reg4.c
  serial/mc68681_reg8.c 
  serial/ns16550.c 
  serial/z85c30.c
  serial/z85c30_reg.c 
  serial/serprobe.c
  serial/ns16550-context.c
)

IF( RTEMS_NETWORKING )
  PREINSTALL_HEADERS( libchip
    network/cs8900.h 
    network/i82586var.h
    network/if_fxpvar.h 
    network/sonic.h
    network/open_eth.h
    network/if_dcreg.h
    network/greth.h
    network/smc91111.h 
    network/smc91111exp.h
    network/dwmac.h
  )
  SET( NETCHIP_SRC
    network/cs8900.c network/dec21140.c network/i82586.c
    network/sonic.c network/if_fxp.c network/elnk.c network/open_eth.c
    network/if_dc.c
    network/greth.c
    network/smc91111.c
    network/dwmac-1000-core.c             
    network/dwmac-1000-dma.c              
    network/dwmac-1000-ethernet-mac-ops.c 
    network/dwmac-core.c                  
    network/dwmac-desc-com.c              
    network/dwmac-desc-enh.c              
    network/dwmac.c
  )
  SET_SOURCE_FILES_PROPERTIES( ${NETCHIP_SRC} PROPERTIES
    COMPILE_FLAGS "-D__INSIDE_RTEMS_BSD_TCPIP_STACK__"
  )
  LIST( APPEND LIBCHIP_SRC ${NETCHIP_SRC} )
ENDIF()

IF( RTEMS_MULTIPROCESSING )
  PREINSTALL_HEADERS_ROOT(
    shmdr/shm_driver.h 
    shmdr/mpci.h
  )
  LIST( APPEND LIBCHIP_SRC
    shmdr/addlq.c 
    shmdr/cnvpkt.c 
    shmdr/getlq.c 
    shmdr/dump.c
    shmdr/fatal.c 
    shmdr/getpkt.c 
    shmdr/init.c 
    shmdr/initlq.c 
    shmdr/intr.c
    shmdr/mpisr.c 
    shmdr/poll.c 
    shmdr/receive.c 
    shmdr/retpkt.c 
    shmdr/send.c
  )
ENDIF()

ADD_LIBRARY( rtems_libchip ${LIBCHIP_SRC} )
ADD_DEPENDENCIES( rtems_libchip rtems_preinstall_headers )
