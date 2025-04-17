 
#/bin/bash

build=x86_64_build
rm -rf ${build}/*
cmake -B ${build}
cmake --build ${build} --config Release -j8
