#!/bin/sh
cd runtimes/mindrt
make || exit
cd ../..

cd app/d/hello
dsss clean && dsss build || exit
cd ../../..

cd app/d/posix
dsss clean && dsss build || exit
cd ../../..

cd app/d/xsh
dsss clean && dsss build || exit
cd ../../..

cd app/d/init
dsss clean && dsss build || exit
cd ../../..


cd build
dsss clean && dsss build || exit

bochs -q
