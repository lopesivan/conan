#!/bin/bash

echo "- AutotoolsToolchain: The toolchain generator for Autotools -"

set -ex

# Remove cache
# if exist path `build' then remove.
_d=build
test -d $_d && rm -rf $_d

# Then generate conanbuild.sh
conan install . --build=missing

source conanbuild.sh

# Build the example
autoreconf --install
./configure
make

source deactivate_conanbuild.sh

# Make dynamic library available on PATH
source conanrun.sh

ls -l ./src/libsoma.la
ls -la ./src/.libs

exit 0
