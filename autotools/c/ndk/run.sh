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

V=23.0.7599858
NDK=${HOME}/Android/Sdk/ndk/${V}
TOOLCHAINS=${NDK}/toolchains/llvm/prebuilt/linux-x86_64
CC=${TOOLCHAINS}/bin/clang CXX=${TOOLCHAINS}/bin/clang++ ./configure
make

source deactivate_conanbuild.sh

# Make dynamic library available on PATH
source conanrun.sh

#run
#./hello
# informação sobre o compilador
objdump -s --section .comment hello
exit 0
