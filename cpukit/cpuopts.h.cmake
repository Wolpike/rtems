#ifndef _RTEMS_SCORE_CPUOPTS_H
#define _RTEMS_SCORE_CPUOPTS_H

#cmakedefine RTEMS_DEBUG 1
#cmakedefine RTEMS_MULTIPROCESSING 1
#cmakedefine RTEMS_NEWLIB 1
#cmakedefine RTEMS_POSIX_API 1
#cmakedefine RTEMS_SMP 1
#cmakedefine RTEMS_PARAVIRT 1
#cmakedefine RTEMS_PROFILING 1
#cmakedefine RTEMS_NETWORKING 1
#cmakedefine RTEMS_DRVMGR_STARTUP 1

#define __RTEMS_MAJOR__ @__RTEMS_MAJOR__@
#define __RTEMS_MINOR__ @__RTEMS_MINOR__@
#define __RTEMS_REVISION__ @__RTEMS_REVISION__@
#define RTEMS_VERSION "@RTEMS_VERSION@"

#cmakedefine __RTEMS_HAVE_SYS_CPUSET_H__ 1
#cmakedefine __RTEMS_HAVE_DECL_SIGALTSTACK__ 1
#cmakedefine __RTEMS_DO_NOT_INLINE_THREAD_ENABLE_DISPATCH__ 1
#cmakedefine __RTEMS_DO_NOT_INLINE_CORE_MUTEX_SEIZE__ 1
#cmakedefine __RTEMS_STRICT_ORDER_MUTEX__ 1
#cmakedefine __RTEMS_ADA__ 1

#endif /* _RTEMS_SCORE_CPUOPTS_H */