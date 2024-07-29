#!/usr/bin/env bash

wget https://ziglang.org/builds/zig-0.14.0-dev.653+91c17979f.tar.xz
tar -xf zig-*.tar.xz
rm zig-*.tar.xz
cd zig-*
mkdir build
cd build
cmake ..
make install
