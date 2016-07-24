PREINSTALL_HEADERS_ROOT( netdb.h resolv.h syslog.h ifaddrs.h )
PREINSTALL_HEADERS( arpa
  arpa/ftp.h
  arpa/inet.h
  arpa/nameser.h
  arpa/nameser_compat.h
)
PREINSTALL_HEADERS( machine
  machine/cpu.h
  machine/cpufunc.h
  machine/in_cksum.h
  machine/vmparam.h
)
PREINSTALL_HEADERS( net
  net/bpf.h
  net/ethernet.h
  net/if.h
  net/if_arp.h
  net/if_dl.h
  net/if_llc.h
  net/if_ppp.h
  net/if_types.h
  net/if_var.h
  net/netisr.h
  net/ppp_defs.h
  net/radix.h
  net/raw_cb.h
  net/route.h
  net/if_pppvar.h
  net/slcompress.h
  net/if_media.h
  net/ppp_comp.h
)
PREINSTALL_HEADERS( netinet 
  netinet/icmp_var.h
  netinet/if_ether.h
  netinet/igmp.h
  netinet/igmp_var.h
  netinet/in.h
  netinet/in_pcb.h
  netinet/in_systm.h
  netinet/in_var.h
  netinet/ip.h
  netinet/ip_fw.h
  netinet/ip_icmp.h
  netinet/ip_mroute.h
  netinet/ip_var.h
  netinet/tcp.h
  netinet/tcp_debug.h
  netinet/tcp_fsm.h
  netinet/tcp_seq.h
  netinet/tcp_timer.h
  netinet/tcp_var.h
  netinet/tcpip.h
  netinet/udp.h
  netinet/udp_var.h
)
PREINSTALL_HEADERS( nfs
  nfs/nfsproto.h
  nfs/rpcv2.h
  nfs/xdr_subs.h
)
PREINSTALL_HEADERS( nfsclient
  nfsclient/nfsargs.h
  nfsclient/nfsdiskless.h
)
PREINSTALL_HEADERS( rtems
  rtems/rtems_bsdnet.h
  rtems/rtems_bsdnet_internal.h
  rtems/dhcp.h
  rtems/rtems_dhcp_failsafe.h
  rtems/tftp.h
  rtems/ftpfs.h
  rtems/mkrootfs.h
  rtems/rtems_mii_ioctl.h
)
PREINSTALL_HEADERS( sys
  sys/callout.h
  sys/conf.h
  sys/domain.h
  sys/kernel.h
  sys/libkern.h
  sys/linker_set.h
  sys/malloc.h
  sys/mbuf.h
  sys/mount.h
  sys/proc.h
  sys/protosw.h
  sys/reboot.h
  sys/resourcevar.h
  sys/select.h
  sys/signalvar.h
  sys/socket.h
  sys/socketvar.h
  sys/sysctl.h
  sys/syslog.h
  sys/systm.h
  sys/ttydefaults.h
  sys/ucred.h
  sys/un.h
)
PREINSTALL_HEADERS( vm
  vm/vm.h
  vm/vm_extern.h
  vm/vm_kern.h
  vm/vm_param.h
)
PREINSTALL_HEADERS( dev/mii dev/mii/mii.h )

SET( KERNEL_SRC
  kern/kern_mib.c 
  kern/kern_subr.c
  kern/kern_sysctl.c 
  kern/uipc_domain.c 
  kern/uipc_mbuf.c
  kern/uipc_socket.c 
  kern/uipc_socket2.c
  net/if.c 
  net/if_ethersubr.c 
  net/if_loop.c
  net/radix.c 
  net/route.c 
  net/rtsock.c 
  net/raw_cb.c 
  net/raw_usrreq.c
  net/if_ppp.c 
  net/ppp_tty.c 
  net/slcompress.c
  netinet/if_ether.c 
  netinet/igmp.c 
  netinet/in.c
  netinet/in_cksum.c 
  netinet/in_pcb.c 
  netinet/in_proto.c 
  netinet/in_rmx.c
  netinet/ip_divert.c 
  netinet/ip_fw.c 
  netinet/ip_icmp.c 
  netinet/ip_input.c
  netinet/ip_mroute.c 
  netinet/ip_output.c 
  netinet/raw_ip.c
  netinet/tcp_debug.c 
  netinet/tcp_input.c 
  netinet/tcp_output.c
  netinet/tcp_subr.c 
  netinet/tcp_timer.c 
  netinet/tcp_usrreq.c
  netinet/udp_usrreq.c
  nfs/bootp_subr.c
  rtems/sghostname.c
  rtems/rtems_glue.c 
  rtems/rtems_malloc_mbuf.c 
  rtems/rtems_syscall.c
  rtems/rtems_bootp.c 
  rtems/rtems_dhcp.c 
  rtems/rtems_dhcp_failsafe.c
  rtems/rtems_showmbuf.c 
  rtems/rtems_showroute.c 
  rtems/rtems_showifstat.c
  rtems/rtems_showipstat.c 
  rtems/rtems_showicmpstat.c
  rtems/rtems_showtcpstat.c 
  rtems/rtems_showudpstat.c 
  rtems/rtems_select.c
  rtems/mkrootfs.c 
  rtems/rtems_bsdnet_malloc_starvation.c
  rtems/rtems_mii_ioctl.c 
  rtems/rtems_mii_ioctl_kern.c
  rtems/rtems_socketpair.c
)
SET( LIBC_SRC
  # libc...
  libc/base64.c
  libc/gethostbydns.c 
  libc/gethostbyht.c 
  libc/gethostbynis.c
  libc/gethostnamadr.c 
  libc/getnetbydns.c 
  libc/getnetbyht.c
  libc/getnetbynis.c 
  libc/getnetnamadr.c 
  libc/getproto.c
  libc/getprotoent.c 
  libc/getprotoname.c 
  libc/getservbyname.c
  libc/getservbyport.c 
  libc/getservent.c 
  libc/herror.c 
  libc/inet_addr.c
  libc/inet_lnaof.c 
  libc/inet_makeaddr.c 
  libc/inet_netof.c
  libc/inet_network.c 
  libc/inet_ntoa.c 
  libc/inet_ntop.c 
  libc/inet_pton.c
  libc/linkaddr.c 
  libc/map_v4v6.c 
  libc/nsap_addr.c 
  libc/ns_name.c
  libc/ns_netint.c 
  libc/ns_parse.c 
  libc/ns_print.c 
  libc/ns_ttl.c
  libc/res_comp.c 
  libc/res_data.c 
  libc/res_debug.c 
  libc/res_init.c
  libc/res_mkquery.c 
  libc/res_mkupdate.c 
  libc/res_query.c 
  libc/res_send.c
  libc/res_stubs.c 
  libc/res_update.c 
  libc/strsep.c 
  libc/rcmd.c
  libc/send.c
  libc/recv.c
  libc/getifaddrs.c
  libc/if_indextoname.c
  libc/if_nameindex.c
)
SET( LIB_SRC
  # lib
  lib/getprotoby.c 
  lib/rtems_bsdnet_ntp.c 
  lib/ftpfs.c
  lib/syslog.c 
  lib/tftpDriver.c
)

SET_SOURCE_FILES_PROPERTIES( ${KERNEL_SRC} PROPERTIES
  COMPILE_FLAGS
  "-DINET -DNFS -DDIAGNOSTIC -DBOOTP_COMPAT -D_KERNEL -D__BSD_VISIBLE"
)
SET_SOURCE_FILES_PROPERTIES( ${LIB_SRC} PROPERTIES
  COMPILE_FLAGS "-DNOPOLL -DNOSELECT"
)
SET_SOURCE_FILES_PROPERTIES( ${LIBC_SRC} PROPERTIES
  COMPILE_FLAGS "-DNOPOLL -DNOSELECT -D__BSD_VISIBLE -D_THREAD_SAFE"
)
ADD_LIBRARY( rtems_network ${KERNEL_SRC} ${LIBC_SRC} ${LIB_SRC} )
TARGET_INCLUDE_DIRECTORIES( rtems_network PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR} )
ADD_DEPENDENCIES( rtems_network rtems_preinstall_headers )
