#!/usr/bin/env bash

autoreconf --install
./configure --prefix /workspace/lucas
make
