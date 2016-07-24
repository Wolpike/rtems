CONFIGURE_FILE( config.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config.h )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )
ADD_DEFINITIONS( -DHAVE_CONFIG_H=1 )
RTEMS_C_EXECUTABLE( sp01 sp01/init.c sp01/task1.c )
RTEMS_C_EXECUTABLE( sp02 
  sp02/init.c sp02/task1.c sp02/task2.c sp02/task3.c sp02/preempt.c )
RTEMS_C_EXECUTABLE( sp03 sp03/init.c sp03/task1.c sp03/task2.c )
RTEMS_C_EXECUTABLE( sp04 
  sp04/init.c 
  sp04/task1.c
  sp04/task2.c
  sp04/task3.c
  sp04/tswitch.c
)
RTEMS_C_EXECUTABLE( sp05 
  sp05/init.c sp05/task1.c sp05/task2.c sp05/task3.c )
RTEMS_C_EXECUTABLE( sp06
  sp06/init.c sp06/task1.c sp06/task2.c sp06/task3.c )
RTEMS_C_EXECUTABLE( sp07 
  sp07/init.c 
  sp07/task1.c
  sp07/task2.c
  sp07/task3.c
  sp07/task4.c
  sp07/taskexit.c
  sp07/tcreate.c
  sp07/tdelete.c
  sp07/trestart.c
  sp07/tstart.c
)
RTEMS_C_EXECUTABLE( sp08 sp08/init.c )
RTEMS_C_EXECUTABLE( sp10 sp10/init.c )
RTEMS_C_EXECUTABLE( sp11 
  sp11/init.c sp11/task1.c sp11/task2.c sp11/timer.c )
RTEMS_C_EXECUTABLE( sp12 
  sp12/init.c 
  sp12/task1.c
  sp12/task2.c
  sp12/task3.c
  sp12/task4.c
  sp12/task5.c
  sp12/pridrv.c
  sp12/pritask.c
)
RTEMS_C_EXECUTABLE( sp13 
  sp13/init.c 
  sp13/fillbuff.c
  sp13/putbuff.c
  sp13/task1.c
  sp13/task2.c
  sp13/task3.c
)
RTEMS_C_EXECUTABLE( sp14 
  sp14/init.c sp14/asr.c sp14/task1.c sp14/task2.c )
RTEMS_C_EXECUTABLE( sp15 sp15/init.c sp15/task1.c )
RTEMS_C_EXECUTABLE( sp16 
  sp16/init.c 
  sp16/task1.c
  sp16/task2.c
  sp16/task3.c
  sp16/task4.c
  sp16/task5.c
)
RTEMS_C_EXECUTABLE( sp17 
  sp17/init.c sp17/asr.c sp17/task1.c sp17/task2.c )
RTEMS_C_EXECUTABLE( sp18 sp18/init.c )
RTEMS_C_EXECUTABLE( sp19 
  sp19/init.c sp19/first.c sp19/fptask.c sp19/task1.c )
RTEMS_C_EXECUTABLE( sp20 sp20/init.c sp20/getall.c sp20/task1.c )
RTEMS_C_EXECUTABLE( sp2038 sp2038/init.c )
RTEMS_C_EXECUTABLE( sp21 sp21/init.c )
RTEMS_C_EXECUTABLE( sp22 
  sp22/init.c sp22/prtime.c sp22/delay.c sp22/task1.c )
RTEMS_C_EXECUTABLE( sp23 sp23/init.c sp23/task1.c )
RTEMS_C_EXECUTABLE( sp24 sp24/init.c sp24/resume.c sp24/task1.c )
RTEMS_C_EXECUTABLE( sp25 sp25/init.c sp25/task1.c )
RTEMS_C_EXECUTABLE( sp26 sp26/init.c sp26/task1.c )
RTEMS_C_EXECUTABLE( sp27 sp27/init.c )
RTEMS_C_EXECUTABLE( sp27a sp27/init.c )
TARGET_COMPILE_DEFINITIONS( sp27a PRIVATE -DUSE_COUNTING_SEMAPHORE )
RTEMS_C_EXECUTABLE( sp30 sp30/init.c sp30/resume.c sp30/task1.c )
RTEMS_C_EXECUTABLE( sp31 
  sp31/init.c sp31/init.c sp31/prtime.c sp31/task1.c sp31/delay.c )
RTEMS_C_EXECUTABLE( sp32 sp32/init.c )
RTEMS_C_EXECUTABLE( sp33 sp33/init.c )
RTEMS_C_EXECUTABLE( sp34 sp34/changepri.c )
RTEMS_C_EXECUTABLE( sp35 sp35/priinv.c )
RTEMS_C_EXECUTABLE( sp37 sp37/init.c )
RTEMS_C_EXECUTABLE( sp38 sp38/init.c )
RTEMS_C_EXECUTABLE( sp40 sp40/init.c )
RTEMS_C_EXECUTABLE( sp41 sp41/init.c )
RTEMS_C_EXECUTABLE( sp42 sp42/init.c )
RTEMS_C_EXECUTABLE( sp43 sp43/init.c )
RTEMS_C_EXECUTABLE( sp44 sp44/init.c )
RTEMS_C_EXECUTABLE( sp45 sp45/init.c )
RTEMS_C_EXECUTABLE( sp46 sp46/init.c )
RTEMS_C_EXECUTABLE( sp47 sp47/init.c )
RTEMS_C_EXECUTABLE( sp48 sp48/init.c )
RTEMS_C_EXECUTABLE( sp49 sp49/init.c )
RTEMS_C_EXECUTABLE( sp50 sp50/init.c )
RTEMS_C_EXECUTABLE( sp51 sp51/init.c )
RTEMS_C_EXECUTABLE( sp52 sp52/init.c )
RTEMS_C_EXECUTABLE( sp53 sp52/init.c )
TARGET_COMPILE_DEFINITIONS( sp53 PRIVATE -DUSE_TIMER_SERVER )
RTEMS_C_EXECUTABLE( sp54 sp54/init.c )
RTEMS_C_EXECUTABLE( sp55 sp55/init.c )
RTEMS_C_EXECUTABLE( sp56 sp56/init.c )
RTEMS_C_EXECUTABLE( sp57 sp57/init.c )
RTEMS_C_EXECUTABLE( sp58 sp58/init.c )
RTEMS_C_EXECUTABLE( sp59 sp59/init.c )
RTEMS_C_EXECUTABLE( sp60 sp60/init.c )
RTEMS_C_EXECUTABLE( sp62 sp62/init.c )
RTEMS_C_EXECUTABLE( sp63 sp63/init.c )
RTEMS_C_EXECUTABLE( sp64 sp64/init.c )
RTEMS_C_EXECUTABLE( sp65 sp65/init.c )
RTEMS_C_EXECUTABLE( sp66 sp65/init.c )
TARGET_COMPILE_DEFINITIONS( sp66 PRIVATE -DINHERIT_CEILING )
RTEMS_C_EXECUTABLE( sp67 sp67/init.c )
RTEMS_C_EXECUTABLE( sp68 sp68/init.c )
RTEMS_C_EXECUTABLE( sp69 sp69/init.c ../support/src/spin.c )
RTEMS_C_EXECUTABLE( sp70 sp70/init.c )
RTEMS_C_EXECUTABLE( sp71 sp71/init.c )
RTEMS_C_EXECUTABLE( sp72 sp72/init.c )
RTEMS_C_EXECUTABLE( sp73 sp73/init.c )
RTEMS_C_EXECUTABLE( sp74 sp74/init.c )
RTEMS_C_EXECUTABLE( sp75 sp75/init.c )
RTEMS_C_EXECUTABLE( sp76 sp76/init.c )
RTEMS_C_EXECUTABLE( sp77 sp77/init.c )
RTEMS_C_EXECUTABLE( spassoc01 spassoc01/init.c )
RTEMS_C_EXECUTABLE( spatomic01 spatomic01/init.c )
RTEMS_C_EXECUTABLE( spcache01 spcache01/init.c )
RTEMS_C_EXECUTABLE( spcbssched01 
  spcbssched01/init.c spcbssched01/task1.c )
RTEMS_C_EXECUTABLE( spcbssched02 
  spcbssched02/init.c spcbssched02/task_periodic.c )
RTEMS_C_EXECUTABLE( spcbssched03 
  spcbssched03/init.c 
  spcbssched03/tasks_periodic.c
  spcbssched03/tasks_aperiodic.c
)
RTEMS_C_EXECUTABLE( spchain spchain/init.c )
RTEMS_C_EXECUTABLE( spclock_err01 
  spclock_err01/init.c spclock_err01/delay.c )
RTEMS_C_EXECUTABLE( spclock_err02 spclock_err02/init.c )
RTEMS_C_EXECUTABLE( spclockget spclockget/init.c )
RTEMS_C_EXECUTABLE( spcontext01 spcontext01/init.c )
RTEMS_C_EXECUTABLE( spcoverage spcoverage/init.c )
RTEMS_C_EXECUTABLE( spcpucounter01 spcpucounter01/init.c )
RTEMS_C_EXECUTABLE( spedfsched01 
  spedfsched01/init.c spedfsched01/task1.c )
RTEMS_C_EXECUTABLE( spedfsched02 
  spedfsched02/init.c 
  spedfsched02/getall.c
  spedfsched02/task1.c
)
RTEMS_C_EXECUTABLE( spedfsched03 
  spedfsched03/init.c 
  spedfsched03/tasks_periodic.c
  spedfsched03/tasks_aperiodic.c
)
RTEMS_C_EXECUTABLE( sperror01 sperror01/init.c )
RTEMS_C_EXECUTABLE( sperror02 sperror02/init.c )
RTEMS_C_EXECUTABLE( sperror03 sperror03/init.c )
RTEMS_C_EXECUTABLE( spevent_err03 spevent_err03/init.c )
RTEMS_C_EXECUTABLE( speventsystem01 speventsystem01/init.c )
RTEMS_C_EXECUTABLE( speventtransient01 speventtransient01/init.c )
RTEMS_C_EXECUTABLE( spfatal01 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal01 PRIVATE spfatal01 )
RTEMS_C_EXECUTABLE( spfatal02 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal02 PRIVATE spfatal02 )
RTEMS_C_EXECUTABLE( spfatal03 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal03 PRIVATE spfatal03 )
RTEMS_C_EXECUTABLE( spfatal04 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal04 PRIVATE spfatal04 )
RTEMS_C_EXECUTABLE( spfatal05 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal05 PRIVATE spfatal05 )
RTEMS_C_EXECUTABLE( spfatal06 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal06 PRIVATE spfatal06 )
RTEMS_C_EXECUTABLE( spfatal07 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal07 PRIVATE spfatal07 )
RTEMS_C_EXECUTABLE( spfatal08 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal08 PRIVATE spfatal08 )
RTEMS_C_EXECUTABLE( spfatal09 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal09 PRIVATE spfatal09 )
RTEMS_C_EXECUTABLE( spfatal10 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal10 PRIVATE spfatal10 )
RTEMS_C_EXECUTABLE( spfatal11 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal11 PRIVATE spfatal11 )
RTEMS_C_EXECUTABLE( spfatal12 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal12 PRIVATE spfatal12 )
RTEMS_C_EXECUTABLE( spfatal13 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal13 PRIVATE spfatal13 )
RTEMS_C_EXECUTABLE( spfatal14 
  spfatal_support/init.c spfatal_support/consume_sems.c )
TARGET_INCLUDE_DIRECTORIES( spfatal14 PRIVATE spfatal14 )
RTEMS_C_EXECUTABLE( spfatal15 
  spfatal_support/init.c spfatal_support/consume_sems.c )
TARGET_INCLUDE_DIRECTORIES( spfatal15 PRIVATE spfatal15 )
RTEMS_C_EXECUTABLE( spfatal16 
  spfatal_support/init.c 
  spfatal_support/consume_sems.c )
TARGET_INCLUDE_DIRECTORIES( spfatal16 PRIVATE spfatal16 )
TARGET_COMPILE_DEFINITIONS( spfatal16 PRIVATE -DSEMAPHORES_REMAINING=4 )
RTEMS_C_EXECUTABLE( spfatal17 
  spfatal_support/init.c spfatal_support/consume_sems.c )
TARGET_COMPILE_DEFINITIONS( spfatal17 PRIVATE -DSEMAPHORES_REMAINING=3 )
TARGET_INCLUDE_DIRECTORIES( spfatal17 PRIVATE spfatal17 )
RTEMS_C_EXECUTABLE( spfatal18 
  spfatal_support/init.c spfatal_support/consume_sems.c )
TARGET_COMPILE_DEFINITIONS( spfatal18 PRIVATE -DSEMAPHORES_REMAINING=2 )
TARGET_INCLUDE_DIRECTORIES( spfatal18 PRIVATE spfatal18 )
RTEMS_C_EXECUTABLE( spfatal19 
  spfatal_support/init.c spfatal_support/consume_sems.c )
TARGET_COMPILE_DEFINITIONS( spfatal19 PRIVATE -DSEMAPHORES_REMAINING=1 )
TARGET_INCLUDE_DIRECTORIES( spfatal19 PRIVATE spfatal19 )
RTEMS_C_EXECUTABLE( spfatal20 
  spfatal_support/init.c spfatal_support/consume_sems.c )
TARGET_INCLUDE_DIRECTORIES( spfatal20 PRIVATE spfatal20 )
TARGET_COMPILE_DEFINITIONS( spfatal20 PRIVATE -DSEMAPHORES_REMAINING=0 )
RTEMS_C_EXECUTABLE( spfatal24 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal24 PRIVATE spfatal24 )
RTEMS_C_EXECUTABLE( spfatal25 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal25 PRIVATE spfatal25 )
RTEMS_C_EXECUTABLE( spfatal26 spfatal26/init.c )
RTEMS_C_EXECUTABLE( spfatal27 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal27 PRIVATE spfatal27 )
RTEMS_C_EXECUTABLE( spfatal28 spfatal_support/init.c )
TARGET_INCLUDE_DIRECTORIES( spfatal28 PRIVATE spfatal28 )
RTEMS_C_EXECUTABLE( spfifo01 spfifo01/init.c )
RTEMS_C_EXECUTABLE( spfifo02 spfifo02/init.c )
RTEMS_C_EXECUTABLE( spfifo03 spfifo03/init.c )
RTEMS_C_EXECUTABLE( spfifo04 spfifo04/init.c )
RTEMS_C_EXECUTABLE( spfifo05 spfifo05/init.c )
RTEMS_C_EXECUTABLE( spfreechain01 spfreechain01/init.c )
RTEMS_C_EXECUTABLE( spheapprot spheapprot/init.c )
RTEMS_C_EXECUTABLE( spinternalerror01 spinternalerror01/init.c )
RTEMS_C_EXECUTABLE( spinternalerror02 spinternalerror02/init.c )
RTEMS_C_EXECUTABLE( spintr_err01 
  spintr_err01/init.c spintr_err01/isr.c )
RTEMS_C_EXECUTABLE( spintrcritical01 
  spintrcritical01/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_COMPILE_DEFINITIONS( spintrcritical01 PRIVATE -DFIFO_NO_TIMEOUT )
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical01 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical02 
  spintrcritical01/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical02 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( 
  spintrcritical02 PRIVATE -DFIFO_WITH_TIMEOUT )
RTEMS_C_EXECUTABLE( spintrcritical03 
  spintrcritical01/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical03 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( 
  spintrcritical03 PRIVATE -DPRIORITY_NO_TIMEOUT )
RTEMS_C_EXECUTABLE( spintrcritical04 
  spintrcritical01/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical04 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( 
  spintrcritical04 PRIVATE -DPRIORITY_WITH_TIMEOUT )
RTEMS_C_EXECUTABLE( spintrcritical05 
  spintrcritical01/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical05 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( 
  spintrcritical05 PRIVATE -DPRIORITY_NO_TIMEOUT_REVERSE )
RTEMS_C_EXECUTABLE( spintrcritical06 
  spintrcritical06/init.c
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical06 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( 
  spintrcritical06 PRIVATE -DPRIORITY_NO_TIMEOUT_FORWARD )
RTEMS_C_EXECUTABLE( spintrcritical07 
  spintrcritical06/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical07 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( 
  spintrcritical07 PRIVATE -DPRIORITY_NO_TIMEOUT_REVERSE )
RTEMS_C_EXECUTABLE( spintrcritical08 
  spintrcritical08/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical08 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical09 
  spintrcritical09/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical09 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical10 
  spintrcritical10/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical10 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical11 
  spintrcritical11/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical11 PRIVATE spintrcritical_support )
TARGET_COMPILE_DEFINITIONS( spintrcritical11 PRIVATE -DEVENT_ANY )
RTEMS_C_EXECUTABLE( spintrcritical12 
  spintrcritical11/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_COMPILE_DEFINITIONS( spintrcritical12 PRIVATE -DEVENT_ALL )
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical12 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical13 
  spintrcritical13/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_COMPILE_DEFINITIONS( spintrcritical13 PRIVATE -DFIRE_AFTER )
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical13 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical14 
  spintrcritical13/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_COMPILE_DEFINITIONS(
  spintrcritical14 PRIVATE -DSERVER_FIRE_AFTER )
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical14 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical15 
  spintrcritical15/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical15 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical16 
  spintrcritical16/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical16 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical17 
  spintrcritical17/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical17 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical18 
  spintrcritical18/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical18 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical20 
  spintrcritical20/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical20 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical21 
  spintrcritical21/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical21 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical22 
  spintrcritical22/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical22 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spintrcritical23 
  spintrcritical23/init.c 
  spintrcritical_support/intrcritical.c
)
TARGET_INCLUDE_DIRECTORIES( 
  spintrcritical23 PRIVATE spintrcritical_support )
RTEMS_C_EXECUTABLE( spmkdir spmkdir/init.c )
RTEMS_C_EXECUTABLE( spmountmgr01 spmountmgr01/init.c )
RTEMS_C_EXECUTABLE( spmrsp01 spmrsp01/init.c )
RTEMS_C_EXECUTABLE( spmsgq_err01 spmsgq_err01/init.c )
RTEMS_C_EXECUTABLE( spmsgq_err02 
  spmsgq_err02/init.c spmsgq_err02/task3.c )
RTEMS_C_EXECUTABLE( spnotepad01 spnotepad01/init.c )
RTEMS_C_EXECUTABLE( spnotepad02 spnotepad02/init.c )
RTEMS_C_EXECUTABLE( spnsext01 spnsext01/init.c )
RTEMS_C_EXECUTABLE( spobjgetnext spobjgetnext/init.c )
RTEMS_C_EXECUTABLE( sppagesize sppagesize/init.c )
RTEMS_C_EXECUTABLE( sppartition_err01 sppartition_err01/init.c )
RTEMS_C_EXECUTABLE( spport_err01 spport_err01/init.c )
RTEMS_C_EXECUTABLE( spprintk spprintk/init.c )
RTEMS_C_EXECUTABLE( spprivenv01 spprivenv01/init.c )
RTEMS_C_EXECUTABLE( spprofiling01 spprofiling01/init.c )
# TODO: managers support...
RTEMS_C_EXECUTABLE( spqreslib 
  spqreslib/init.c spqreslib/task_periodic.c )
RTEMS_C_EXECUTABLE( spratemon_err01 
  spratemon_err01/init.c 
  spratemon_err01/screen10.c
  spratemon_err01/task4.c 
)
RTEMS_C_EXECUTABLE( sprbtree01 sprbtree01/init.c )
RTEMS_C_EXECUTABLE( spregion_err01 spregion_err01/init.c )
RTEMS_C_EXECUTABLE( spresource01 spresource01/init.c )
RTEMS_C_EXECUTABLE( spscheduler01 spscheduler01/init.c )
RTEMS_C_EXECUTABLE( spsem01 spsem01/init.c )
RTEMS_C_EXECUTABLE( spsem02 spsem02/init.c )
RTEMS_C_EXECUTABLE( spsem03 spsem03/init.c )
RTEMS_C_EXECUTABLE( spsem_err01 spsem_err01/init.c )
RTEMS_C_EXECUTABLE( spsem_err02 spsem_err02/init.c spsem_err02/task2.c )
RTEMS_C_EXECUTABLE( spsignal_err01 
  spsignal_err01/init.c spsignal_err01/isr.c )
RTEMS_C_EXECUTABLE( spsimplesched01 spsimplesched01/init.c )
RTEMS_C_EXECUTABLE( spsimplesched02 spsimplesched02/init.c )
RTEMS_C_EXECUTABLE( spsimplesched03 spsimplesched03/init.c )
RTEMS_C_EXECUTABLE( spsize spsize/init.c spsize/getint.c spsize/size.c )
RTEMS_C_EXECUTABLE( spstkalloc spstkalloc/init.c )
RTEMS_C_EXECUTABLE( spstkalloc02 spstkalloc02/init.c )
RTEMS_C_EXECUTABLE( sptask_err01 
  sptask_err01/init.c sptask_err01/task2.c )
RTEMS_C_EXECUTABLE( sptask_err02 sptask_err02/init.c )
RTEMS_C_EXECUTABLE( sptask_err03 sptask_err03/init.c )
RTEMS_C_EXECUTABLE( sptask_err04 
  sptask_err04/init.c sptask_err04/task1.c )
RTEMS_C_EXECUTABLE( sptasknopreempt01 sptasknopreempt01/init.c )
RTEMS_C_EXECUTABLE( spthreadlife01 spthreadlife01/init.c )
RTEMS_C_EXECUTABLE( spthreadq01 spthreadq01/init.c )
RTEMS_C_EXECUTABLE( sptimecounter01 sptimecounter01/init.c )
RTEMS_C_EXECUTABLE( sptimecounter02 
  sptimecounter02/init.c ../support/src/spin.c )
RTEMS_C_EXECUTABLE( sptimecounter03 sptimecounter03/init.c )
RTEMS_C_EXECUTABLE( sptimer_err01 sptimer_err01/init.c )
RTEMS_C_EXECUTABLE( sptimer_err02 sptimer_err02/init.c )
RTEMS_C_EXECUTABLE( sptimespec01 sptimespec01/init.c )
RTEMS_C_EXECUTABLE( sptls01 sptls01/init.c )
RTEMS_C_EXECUTABLE( sptls03 sptls03/init.c )
RTEMS_C_EXECUTABLE( spwatchdog 
  spwatchdog/init.c 
  spwatchdog/task1.c
  spwatchdog/prtime.c
  spwatchdog/delay.c 
)
RTEMS_C_EXECUTABLE( spwkspace spwkspace/init.c )

IF( NOT RTEMS_SMP )
 RTEMS_C_EXECUTABLE( sp29 sp29/init.c )
ENDIF()
IF( RTEMS_CPLUSPLUS )
 RTEMS_CXX_EXECUTABLE( spglobalcon01 spglobalcon01/init.cc )
 RTEMS_CXX_EXECUTABLE( sptls02 sptls02/init.cc )
 TARGET_COMPILE_OPTIONS( 
   sptls02 PRIVATE -std=c++11 -ftls-model=local-exec )
ENDIF()

# TODO: if HAS_CPUSET: spcpuset01 (test.c init.c) -DSMPTEST
