
#/bin/bash

#config riscv64 toolchain
export RISCV_ROOT_PATH=/home/zhangyang/workspace/tools/k230/linux/Xuantie-900-gcc-linux-6.6.0-glibc-x86_64-V2.10.1

build=riscv64_build
mkdir -p ${build}
rm -rf ${build}/*

pushd ${build}
cmake -DCMAKE_TOOLCHAIN_FILE=cmake/riscv64_linux.cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8
popd

#cp riscv64_build/bin/*  /home/share/nfsroot/k230/k230_llm/llama.cpp
