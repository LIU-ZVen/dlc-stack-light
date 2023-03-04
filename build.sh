#!/bin/bash
set -e
shell_path=$(cd "$(dirname "$0")";pwd)
build_type=Debug

if [ ! -d "${shell_path}/build" ]; then
  mkdir ${shell_path}/build
fi
cd ${shell_path}/build
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
cmake -DCMAKE_BUILD_TYPE=${build_type} ..
make -j
cd ..
