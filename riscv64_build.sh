
#/bin/bash

export RISCV_ROOT_PATH=/home/zhangyang/workspace/tools/k230/linux/Xuantie-900-gcc-linux-6.6.0-glibc-x86_64-V2.10.1

build=riscv64_build
# rm -rf ${build}
cmake . -B ${build} -DCMAKE_TOOLCHAIN_FILE=cmake/riscv64_linux.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build ${build} --config Release -j8

cp riscv64_build/bin/llama-cli  /home/share/nfsroot/k230/k230_llm/llama.cpp
