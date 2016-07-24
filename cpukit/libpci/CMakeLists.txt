PREINSTALL_HEADERS_ROOT( pci.h )
PREINSTALL_HEADERS( pci
  pci/access.h 
  pci/cfg.h
  pci/cfg_auto.h 
  pci/cfg_static.h
  pci/cfg_peripheral.h 
  pci/cfg_read.h
  pci/ids.h 
  pci/ids_extra.h 
  pci/irq.h
  pci/pcireg.h
)
PREINSTALL_HEADERS( drvmgr pci_bus.h )

SET( LIBPCI_SRC
  pci_access.c
  pci_access_func.c
  pci_access_io.c
  pci_access_mem.c
  pci_access_mem_be.c
  pci_access_mem_le.c
  pci_cfg.c
  pci_cfg_auto.c
  pci_cfg_print_code.c
  pci_cfg_read.c
  pci_cfg_static.c
  pci_cfg_peripheral.c
  pci_dev_create.c
  pci_find.c
  pci_find_dev.c
  pci_for_each.c
  pci_for_each_dev.c
  pci_for_each_child.c
  pci_get_dev.c
  pci_irq.c
  pci_print.c
  pci_bus.c
)
ADD_LIBRARY( rtems_pci ${LIBPCI_SRC} )
ADD_DEPENDENCIES( rtems_pci rtems_preinstall_headers )
