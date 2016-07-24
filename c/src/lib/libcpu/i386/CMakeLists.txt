PREINSTALL_HEADERS( libcpu
  cpu.h
  cpuModel.h
  ../shared/include/cache.h
  byteorder.h
)

SET( CPU_SRC
  cache.c
  ../shared/src/cache_manager.c
  displayCpu.c
  cpuModel.S
  idtr.S
  page.c
)

ADD_LIBRARY( rtems_c_cpu ${CPU_SRC} )
SET_SOURCE_FILES_PROPERTIES( ${CPU_SRC} PROPERTIES
  COMPILE_FLAGS "-I${CMAKE_CURRENT_SOURCE_DIR}" 
)
ADD_DEPENDENCIES( rtems_c_cpu rtems_preinstall_headers )
