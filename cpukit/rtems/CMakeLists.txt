PREINSTALL_HEADERS_ROOT( include/rtems.h )

PREINSTALL_HEADERS( rtems/rtems
  include/rtems/rtems/asr.h
  include/rtems/rtems/asrimpl.h
  include/rtems/rtems/attr.h
  include/rtems/rtems/attrimpl.h
  include/rtems/rtems/barrier.h
  include/rtems/rtems/barrierimpl.h
  include/rtems/rtems/cache.h
  include/rtems/rtems/clock.h
  include/rtems/rtems/config.h
  include/rtems/rtems/dpmem.h
  include/rtems/rtems/dpmemimpl.h
  include/rtems/rtems/event.h
  include/rtems/rtems/eventimpl.h
  include/rtems/rtems/intr.h
  include/rtems/rtems/message.h
  include/rtems/rtems/messageimpl.h
  include/rtems/rtems/modes.h
  include/rtems/rtems/modesimpl.h
  include/rtems/rtems/object.h
  include/rtems/rtems/options.h
  include/rtems/rtems/optionsimpl.h
  include/rtems/rtems/part.h
  include/rtems/rtems/partimpl.h
  include/rtems/rtems/ratemon.h
  include/rtems/rtems/ratemonimpl.h
  include/rtems/rtems/region.h
  include/rtems/rtems/regionimpl.h
  include/rtems/rtems/rtemsapi.h
  include/rtems/rtems/sem.h
  include/rtems/rtems/semimpl.h
  include/rtems/rtems/signal.h
  include/rtems/rtems/signalimpl.h
  include/rtems/rtems/smp.h
  include/rtems/rtems/status.h
  include/rtems/rtems/statusimpl.h
  include/rtems/rtems/support.h
  include/rtems/rtems/tasks.h
  include/rtems/rtems/tasksimpl.h
  include/rtems/rtems/timer.h
  include/rtems/rtems/timerimpl.h
  include/rtems/rtems/types.h
  mainpage.h
) 

IF( RTEMS_MULTIPROCESSING )
  PREINSTALL_HEADERS(
    include/rtems/rtems/eventmp.h
    include/rtems/rtems/mp.h
    include/rtems/rtems/msgmp.h
    include/rtems/rtems/partmp.h
    include/rtems/rtems/regionmp.h
    include/rtems/rtems/semmp.h
    include/rtems/rtems/signalmp.h
    include/rtems/rtems/taskmp.h
  )
ENDIF()

SET( RTEMS_SRC
  ## src
  src/rtemsbuildid.c
  src/rtemsbuildname.c
  src/rtemsobjectgetname.c
  src/rtemsobjectsetname.c
  src/rtemsobjectidapimaximum.c
  src/rtemsobjectidapiminimum.c
  src/rtemsobjectidgetapi.c
  src/rtemsobjectidgetclass.c
  src/rtemsobjectidgetindex.c
  src/rtemsobjectidgetnode.c
  src/rtemsobjectapiminimumclass.c
  src/rtemsobjectapimaximumclass.c
  src/rtemsobjectgetapiname.c
  src/rtemsobjectgetapiclassname.c
  src/rtemsobjectgetclassinfo.c
  src/rtemsobjectgetclassicname.c

  ## TASK_C_FILES
  src/tasks.c
  src/taskcreate.c
  src/taskdelete.c
  src/taskgetaffinity.c
  src/taskgetnote.c
  src/taskgetscheduler.c
  src/taskident.c
  src/taskinitusers.c
  src/taskissuspended.c
  src/taskmode.c
  src/taskrestart.c
  src/taskresume.c
  src/taskself.c
  src/tasksetaffinity.c
  src/tasksetnote.c
  src/tasksetpriority.c
  src/tasksetscheduler.c
  src/taskstart.c
  src/tasksuspend.c
  src/taskwakeafter.c
  src/taskwakewhen.c
  src/taskdata.c
  src/schedulergetprocessorset.c
  src/schedulerident.c

  ## RATEMON_C_FILES
  src/ratemon.c
  src/ratemoncancel.c
  src/ratemoncreate.c
  src/ratemondelete.c
  src/ratemongetstatus.c
  src/ratemongetstatistics.c
  src/ratemonresetstatistics.c
  src/ratemonresetall.c
  src/ratemonreportstatistics.c
  src/ratemonident.c
  src/ratemonperiod.c
  src/ratemontimeout.c
  src/ratemondata.c

  ## INTR_C_FILES
  src/intrbody.c
  src/intrcatch.c

  ## BARRIER_C_FILES
  src/barrier.c
  src/barriercreate.c
  src/barrierdelete.c
  src/barrierident.c
  src/barriertranslatereturncode.c
  src/barrierrelease.c
  src/barrierwait.c
  src/barrierdata.c

  ## CLOCK_C_FILES
  src/clockget.c
  src/clockgetsecondssinceepoch.c
  src/clockgettickspersecond.c
  src/clockgettod.c
  src/clockgettodtimeval.c
  src/clockgetuptime.c
  src/clockgetuptimetimeval.c
  src/clockgetuptimenanoseconds.c
  src/clockset.c
  src/clocktick.c
  src/clocktodtoseconds.c
  src/clocktodvalidate.c

  ## TIMER_C_FILES
  src/rtemstimer.c
  src/timercancel.c
  src/timercreate.c
  src/timerdelete.c
  src/timerfireafter.c
  src/timerfirewhen.c
  src/timergetinfo.c
  src/timerident.c
  src/timerreset.c
  src/timerserver.c
  src/timerserverfireafter.c
  src/timerserverfirewhen.c
  src/rtemstimerdata.c

  ## MESSAGE_QUEUE_C_FILES
  src/msg.c
  src/msgqbroadcast.c
  src/msgqcreate.c
  src/msgqdelete.c
  src/msgqflush.c
  src/msgqgetnumberpending.c
  src/msgqident.c
  src/msgqreceive.c
  src/msgqsend.c
  src/msgqtranslatereturncode.c
  src/msgqurgent.c
  src/msgdata.c

  ## SEMAPHORE_C_FILES
  src/sem.c
  src/semcreate.c
  src/semdelete.c
  src/semident.c
  src/semobtain.c
  src/semrelease.c
  src/semflush.c
  src/semtranslatereturncode.c
  src/semdata.c
  src/semsetpriority.c

  ## EVENT_C_FILES
  src/event.c
  src/eventreceive.c
  src/eventseize.c
  src/eventsend.c
  src/eventsurrender.c
  src/systemeventsend.c
  src/systemeventreceive.c

  ## SIGNAL_C_FILES
  src/signal.c
  src/signalcatch.c
  src/signalsend.c

  ## REGION_C_FILES
  src/region.c
  src/regioncreate.c
  src/regiondelete.c
  src/regionextend.c
  src/regiongetsegment.c
  src/regiongetsegmentsize.c
  src/regionident.c
  src/regionreturnsegment.c
  src/regiongetinfo.c
  src/regiongetfreeinfo.c
  src/regionresizesegment.c
  src/regionprocessqueue.c
  src/regiondata.c

  ## PARTITION_C_FILES
  src/part.c
  src/partcreate.c
  src/partdelete.c
  src/partgetbuffer.c
  src/partident.c
  src/partreturnbuffer.c
  src/partdata.c

  ## DPMEM_C_FILES
  src/dpmem.c
  src/dpmemcreate.c
  src/dpmemdelete.c
  src/dpmemexternal2internal.c
  src/dpmemident.c
  src/dpmeminternal2external.c
  src/dpmemdata.c

  ## WORKSPACE_FILES
  src/workspace.c
  src/workspacegreedy.c

  src/modes.c

  src/status.c
  src/statustext.c

  src/getcurrentprocessor.c
  src/getprocessorcount.c
)

IF( NOT RTEMS_SMP )
  LIST( APPEND RTEMS_SRC
    src/taskvariableadd.c
    src/taskvariabledelete.c
    src/taskvariableget.c
    src/taskvariable_invoke_dtor.c
  )
ENDIF()

IF( RTEMS_MULTIPROCESSING )
  LIST( APPEND RTEMS_SRC
    src/eventmp.c
    src/mp.c
    src/msgmp.c
    src/partmp.c
    src/regionmp.c
    src/semmp.c
    src/signalmp.c
    src/taskmp.c
  )
ENDIF()

ADD_LIBRARY( rtems_rtems ${RTEMS_SRC} )
ADD_DEPENDENCIES( rtems_rtems rtems_preinstall_headers )
