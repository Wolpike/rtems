SET( LIBCRYPT_SRC
  crypt.c
  crypt-md5.c
  crypt-sha256.c
  crypt-sha512.c
  misc.c
)

ADD_LIBRARY( rtems_libcrypt ${LIBCRYPT_SRC} )
ADD_DEPENDENCIES( rtems_libcrypt rtems_preinstall_headers )
