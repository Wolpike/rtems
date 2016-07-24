PREINSTALL_HEADERS( dev/i2c
  include/dev/i2c/eeprom.h
  include/dev/i2c/gpio-nxp-pca9535.h
  include/dev/i2c/i2c.h
  include/dev/i2c/switch-nxp-pca9548a.h
)

PREINSTALL_HEADERS( linux
  include/linux/i2c.h
  include/linux/i2c-dev.h
)

SET( DEV_SRC
  i2c/eeprom.c
  i2c/gpio-nxp-pca9535.c
  i2c/i2c-bus.c
  i2c/i2c-dev.c
  i2c/switch-nxp-pca9548a.c
)

ADD_LIBRARY( rtems_dev ${DEV_SRC} )
ADD_DEPENDENCIES( rtems_dev rtems_preinstall_headers )
