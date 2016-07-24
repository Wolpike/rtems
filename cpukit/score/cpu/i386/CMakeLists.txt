PREINSTALL_HEADERS( rtems rtems/asm.h )
PREINSTALL_HEADERS( rtems/score
  rtems/score/cpu.h
  rtems/score/i386.h
  rtems/score/types.h
  rtems/score/interrupts.h
  rtems/score/registers.h
  rtems/score/idtr.h
  rtems/score/cpuatomic.h
)

ADD_LIBRARY( rtems_scorecpu
  cpu.c
  cpu_asm.S
  ../no_cpu/cpucounterread.c
)

ADD_DEPENDENCIES( rtems_scorecpu rtems_preinstall_headers )
