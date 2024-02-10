AC_PREREQ([2.69])
AC_INIT([myapp], [1.0], [seuemail@example.com])

AM_INIT_AUTOMAKE([-Wall -Werror foreign])

# Verificações para compiladores e ferramentas
AC_PROG_CC

# para gerar: lib/.libs/libmyapp.so
AM_PROG_AR
LT_INIT

AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_HEADERS([config.h])

## Enable libtools features

# Onde colocar os arquivos gerados
AC_CONFIG_FILES([Makefile
				 lib/Makefile
				 src/Makefile])

AC_OUTPUT

