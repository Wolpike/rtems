PREINSTALL_HEADERS( sys
  include/sys/_ffcounter.h
  include/sys/timeffc.h
  include/sys/timepps.h
  include/sys/timetc.h
  include/sys/timex.h
)

PREINSTALL_HEADERS( rtems
  include/rtems/debug.h
  include/rtems/system.h
  include/rtems/seterr.h
)

PREINSTALL_HEADERS( rtems/score
  include/rtems/score/address.h
  include/rtems/score/apiext.h
  include/rtems/score/apimutex.h
  include/rtems/score/assert.h
  include/rtems/score/atomic.h
  include/rtems/score/chain.h
  include/rtems/score/chainimpl.h
  include/rtems/score/context.h
  include/rtems/score/copyrt.h
  include/rtems/score/corebarrier.h
  include/rtems/score/corebarrierimpl.h
  include/rtems/score/coremsg.h
  include/rtems/score/coremsgimpl.h
  include/rtems/score/coremutex.h
  include/rtems/score/coremuteximpl.h
  include/rtems/score/coresem.h
  include/rtems/score/coresemimpl.h
  include/rtems/score/cpuset.h
  include/rtems/score/cpusetimpl.h
  include/rtems/score/cpustdatomic.h
  include/rtems/score/heap.h
  include/rtems/score/heapimpl.h
  include/rtems/score/protectedheap.h
  include/rtems/score/interr.h
  include/rtems/score/isr.h
  include/rtems/score/isrlevel.h
  include/rtems/score/isrlock.h
  include/rtems/score/freechain.h
  include/rtems/score/mrsp.h
  include/rtems/score/mrspimpl.h
  include/rtems/score/object.h
  include/rtems/score/objectimpl.h
  include/rtems/score/onceimpl.h
  include/rtems/score/percpu.h
  include/rtems/score/priority.h
  include/rtems/score/prioritybitmap.h
  include/rtems/score/prioritybitmapimpl.h
  include/rtems/score/profiling.h
  include/rtems/score/rbtree.h
  include/rtems/score/rbtreeimpl.h
  include/rtems/score/resource.h
  include/rtems/score/resourceimpl.h
  include/rtems/score/scheduler.h
  include/rtems/score/schedulerimpl.h
  include/rtems/score/schedulercbs.h
  include/rtems/score/schedulercbsimpl.h
  include/rtems/score/scheduleredf.h
  include/rtems/score/scheduleredfimpl.h
  include/rtems/score/schedulerpriority.h
  include/rtems/score/schedulerpriorityimpl.h
  include/rtems/score/schedulerprioritysmp.h
  include/rtems/score/schedulersimple.h
  include/rtems/score/schedulersimpleimpl.h
  include/rtems/score/schedulersmp.h
  include/rtems/score/schedulersmpimpl.h
  include/rtems/score/smp.h
  include/rtems/score/smpbarrier.h
  include/rtems/score/smplock.h
  include/rtems/score/smpimpl.h
  include/rtems/score/stack.h
  include/rtems/score/stackimpl.h
  include/rtems/score/states.h
  include/rtems/score/statesimpl.h
  include/rtems/score/sysstate.h
  include/rtems/score/thread.h
  include/rtems/score/threadimpl.h
  include/rtems/score/threaddispatch.h
  include/rtems/score/threadq.h
  include/rtems/score/threadqimpl.h
  include/rtems/score/timespec.h
  include/rtems/score/timestamp.h
  include/rtems/score/timecounter.h
  include/rtems/score/timecounterimpl.h
  include/rtems/score/tls.h
  include/rtems/score/tod.h
  include/rtems/score/todimpl.h
  include/rtems/score/userext.h
  include/rtems/score/userextimpl.h
  include/rtems/score/watchdog.h
  include/rtems/score/watchdogimpl.h
  include/rtems/score/wkspace.h
  include/rtems/score/basedefs.h
)

IF( RTEMS_PTHREADS )
  PREINSTALL_HEADERS( rtems/score
    include/rtems/score/corespinlock.h
    include/rtems/score/corespinlockimpl.h
    include/rtems/score/corerwlock.h
    include/rtems/score/corerwlockimpl.h
  )
ENDIF()

IF( RTEMS_MULTIPROCESSING )
  PREINSTALL_HEADERS( rtems/score
    include/rtems/score/mpci.h
    include/rtems/score/mpciimpl.h
    include/rtems/score/mppkt.h
    include/rtems/score/objectmp.h
    include/rtems/score/threadmp.h
  )
ENDIF()

IF( RTEMS_SMP )
  PREINSTALL_HEADERS( rtems/score
    include/rtems/score/schedulerprioritysmpimpl.h
    include/rtems/score/schedulerpriorityaffinitysmp.h
    include/rtems/score/schedulersimplesmp.h
  )
ENDIF()

SET( SCORE_SRC
  ## CORE_APIMUTEX_C_FILES
  src/apimutex.c
  src/apimutexlock.c
  src/apimutexisowner.c
  src/apimutexunlock.c
  ## CORE_BARRIER_C_FILES
  src/corebarrier.c 
  src/corebarrierrelease.c
  src/corebarrierwait.c

  ## CORE_MESSAGE_QUEUE_C_FILES
  src/coremsg.c 
  src/coremsgbroadcast.c
  src/coremsgclose.c 
  src/coremsgflush.c 
  src/coremsgflushwait.c
  src/coremsginsert.c 
  src/coremsgseize.c
  src/coremsgsubmit.c

  ## CORE_MUTEX_C_FILES
  src/coremutex.c 
  src/coremutexflush.c
  src/coremutexseize.c 
  src/coremutexsurrender.c
  src/coremutexseizeintr.c

  ## CORE_PERCPU_C_FILES
  src/percpu.c
  src/percpuasm.c

  ## CORE_SEMAPHORE_C_FILES
  src/coresem.c

  ## HEAP_C_FILES
  src/heap.c 
  src/heapallocate.c 
  src/heapextend.c
  src/heapfree.c 
  src/heapsizeofuserarea.c 
  src/heapwalk.c 
  src/heapgetinfo.c
  src/heapgetfreeinfo.c 
  src/heapresizeblock.c 
  src/heapiterate.c
  src/heapgreedy.c 
  src/heapnoextend.c

  ## OBJECT_C_FILES
  src/objectallocate.c 
  src/objectclose.c
  src/objectextendinformation.c 
  src/objectfree.c 
  src/objectget.c
  src/objectgetisr.c 
  src/objectgetnext.c 
  src/objectinitializeinformation.c
  src/objectnametoid.c 
  src/objectnametoidstring.c
  src/objectshrinkinformation.c 
  src/objectgetnoprotection.c
  src/objectidtoname.c 
  src/objectgetnameasstring.c 
  src/objectsetname.c
  src/objectgetinfo.c 
  src/objectgetinfoid.c 
  src/objectapimaximumclass.c
  src/objectnamespaceremove.c
  src/objectactivecount.c

  ## SCHEDULER_C_FILES
  src/log2table.c
  src/scheduler.c
  src/schedulergetaffinity.c
  src/schedulersetaffinity.c
  src/schedulerdefaultnodedestroy.c
  src/schedulerdefaultnodeinit.c
  src/schedulerdefaultreleasejob.c
  src/schedulerdefaultschedule.c
  src/schedulerdefaultstartidle.c
  src/schedulerdefaulttick.c
  src/schedulerdefaultupdate.c

  ## SCHEDULERPRIORITY_C_FILES
  src/schedulerpriority.c
  src/schedulerpriorityblock.c
  src/schedulerprioritychangepriority.c
  src/schedulerpriorityprioritycompare.c
  src/schedulerpriorityschedule.c
  src/schedulerpriorityunblock.c
  src/schedulerpriorityupdate.c
  src/schedulerpriorityyield.c

  ## SCHEDULERSIMPLE_C_FILES
  src/schedulersimple.c
  src/schedulersimpleblock.c
  src/schedulersimplechangepriority.c
  src/schedulersimpleschedule.c
  src/schedulersimpleunblock.c
  src/schedulersimpleyield.c

  ## SCHEDULEREDF_C_FILES
  src/scheduleredf.c
  src/scheduleredfnodeinit.c
  src/scheduleredfblock.c
  src/scheduleredfchangepriority.c
  src/scheduleredfprioritycompare.c
  src/scheduleredfreleasejob.c
  src/scheduleredfschedule.c
  src/scheduleredfunblock.c
  src/scheduleredfupdate.c
  src/scheduleredfyield.c

  ## SCHEDULERCBS_C_FILES
  src/schedulercbs.c
  src/schedulercbsnodeinit.c
  src/schedulercbsattachthread.c
  src/schedulercbscleanup.c
  src/schedulercbscreateserver.c
  src/schedulercbsdestroyserver.c
  src/schedulercbsdetachthread.c
  src/schedulercbsgetapprovedbudget.c
  src/schedulercbsgetexecutiontime.c
  src/schedulercbsgetparameters.c
  src/schedulercbsgetremainingbudget.c
  src/schedulercbsgetserverid.c
  src/schedulercbssetparameters.c
  src/schedulercbsreleasejob.c
  src/schedulercbsunblock.c

  ## PROTECTED_HEAP_C_FILES
  src/pheapallocate.c
  src/pheapextend.c 
  src/pheapfree.c 
  src/pheapgetsize.c
  src/pheapgetblocksize.c 
  src/pheapgetfreeinfo.c 
  src/pheapgetinfo.c
  src/pheapinit.c 
  src/pheapresizeblock.c 
  src/pheapwalk.c 
  src/pheapiterate.c

  ## FREECHAIN_C_FILES
  src/freechain.c

  ## RBTREE_C_FILES
  src/rbtree.c
  src/rbtreeextract.c 
  src/rbtreefind.c
  src/rbtreeinsert.c 
  src/rbtreeiterate.c 
  src/rbtreenext.c

  ## THREAD_C_FILES
  src/thread.c 
  src/threadchangepriority.c
  src/threadclearstate.c 
  src/threadcreateidle.c
  src/threaddispatch.c
  src/threadenabledispatch.c 
  src/threaddisabledispatch.c
  src/threadget.c 
  src/threadhandler.c 
  src/threadinitialize.c
  src/threadloadenv.c
  src/threadrestart.c 
  src/threadsetpriority.c
  src/threadsetstate.c
  src/threadstackallocate.c 
  src/threadstackfree.c 
  src/threadstart.c
  src/threadstartmultitasking.c 
  src/iterateoverthreads.c
  src/threadglobalconstruction.c
  src/threadtimeout.c
  src/threadyield.c

  ## THREADQ_C_FILES
  src/threadq.c
  src/threadqenqueue.c
  src/threadqextractwithproxy.c
  src/threadqfirst.c
  src/threadqflush.c
  src/threadqops.c

  ## TIMESPEC_C_FILES
  src/timespecaddto.c 
  src/timespecfromticks.c
  src/timespecisvalid.c 
  src/timespeclessthan.c
  src/timespecsubtract.c 
  src/timespectoticks.c 
  src/timespecdivide.c
  src/timespecdividebyinteger.c 
  src/timespecgetasnanoseconds.c

  ## TOD_C_FILES
  src/coretod.c 
  src/coretodset.c
  src/coretodtickle.c
  src/coretodtickspersec.c
  src/coretodadjust.c

  ## WATCHDOG_C_FILES
  src/watchdog.c 
  src/watchdogadjust.c 
  src/watchdoginsert.c
  src/watchdogremove.c
  src/watchdogtick.c
  src/watchdogtickssinceboot.c

  ## USEREXT_C_FILES
  src/userextaddset.c
  src/userext.c 
  src/userextremoveset.c 
  src/userextiterate.c

  ## STD_C_FILES
  src/apiext.c 
  src/chain.c 
  src/chainappend.c
  src/chainextract.c 
  src/chainget.c 
  src/chaininsert.c
  src/chainappendempty.c 
  src/chainprependempty.c 
  src/chaingetempty.c
  src/chainnodecount.c
  src/debugisthreaddispatchingallowed.c
  src/interr.c 
  src/isr.c 
  src/wkspace.c 
  src/wkstringduplicate.c
  src/isrisinprogress.c
  src/debugisownerofallocator.c
  src/profilingisrentryexit.c
  src/once.c
  src/resourceiterate.c
  src/smpbarrierwait.c
  src/kern_tc.c
)

IF( RTEMS_SMP )
  LIST( APPEND SCORE_SRC
    src/percpustatewait.c
    src/profilingsmplock.c
    src/schedulerchangeroot.c
    src/schedulerpriorityaffinitysmp.c
    src/schedulerprioritysmp.c
    src/schedulersimplesmp.c
    src/schedulersmpdebug.c
    src/smp.c
    src/smplock.c
    src/smpmulticastaction.c
    src/cpuset.c
    src/cpusetprintsupport.c
    src/schedulerdefaultaskforhelp.c
    src/schedulerdefaultgetaffinity.c
    src/schedulerdefaultsetaffinity.c
    src/schedulersmpstartidle.c
    src/threaddispatchdisablelevel.c
  )
ENDIF()

IF( RTEMS_MULTIPROCESSING )
  LIST( APPEND SCORE_SRC
    src/mpci.c
    src/objectmp.c
    src/threadmp.c
  )
ENDIF()

IF( RTEMS_PTHREADS )
  LIST( APPEND SCORE_SRC
    ## CORE_RWLOCK_C_FILES
    src/corerwlock.c
    src/corerwlockobtainread.c
    src/corerwlockobtainwrite.c
    src/corerwlockrelease.c
    ## CORE_SPINLOCK_C_FILES
    src/corespinlock.c
    src/corespinlockrelease.c
    src/corespinlockwait.c
  )
ENDIF()

ADD_SUBDIRECTORY( "cpu/${RTEMS_CPU}" )

ADD_LIBRARY( rtems_score ${SCORE_SRC} )
ADD_DEPENDENCIES( rtems_score rtems_preinstall_headers )
