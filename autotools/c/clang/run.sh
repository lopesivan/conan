#!/bin/bash

echo "- AutotoolsToolchain: The toolchain generator for Autotools -"

set -ex

# Remove cache
# if exist path `build' then remove.
_d=build
test -d $_d && rm -rf $_d

# Then generate conanbuild.sh
conan install . --output-folder=build --build=missing

cd build
ln -s ../configure.ac
ln -s ../Makefile.am
ln -s ../src
source conanbuild.sh

# Build the example
aclocal
automake --add-missing
autoconf
CC=clang CXX=clang++ ./configure
make

source deactivate_conanbuild.sh

# Make dynamic library available on PATH
source conanrun.sh

#run
#./hello
# informação sobre o compilador
objdump -s --section .comment hello
exit 0
