AC_PREREQ([2.69])
AC_INIT([Myapp], [1.0], [seuemail@example.com])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

# Verificações para compiladores e ferramentas
AC_PROG_CC
AM_PROG_CC_C_O

# para gerar: libmyapp.a
AC_PROG_RANLIB
AM_PROG_AR

AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_HEADERS([config.h])

# Onde colocar os arquivos gerados
AC_CONFIG_FILES([Makefile
                 lib/Makefile
                 src/Makefile])

AC_OUTPUT

