#!/bin/sh
SAVED_DIR=`pwd`
NUM_PROCS=4
ARCH=armeabi-v7a

API_LEVEL=19

PLATFORM=android-$API_LEVEL
BUILD_TYPE=Debug
cd $SAVED_DIR
rm -rf ./build/$ARCH/$PLATFORM/$BUILD_TYPE
mkdir -p ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cd ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cmake ../../../.. -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DNDK_ARCH=$ARCH -DNDK_PLATFORM=$API_LEVEL
make -j $NUM_PROCS

PLATFORM=android-$API_LEVEL
BUILD_TYPE=Release
cd $SAVED_DIR
rm -rf ./build/$ARCH/$PLATFORM/$BUILD_TYPE
mkdir -p ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cd ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cmake ../../../.. -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DNDK_ARCH=$ARCH -DNDK_PLATFORM=$API_LEVEL
make -j $NUM_PROCS

API_LEVEL=21

PLATFORM=android-$API_LEVEL
BUILD_TYPE=Debug
cd $SAVED_DIR
rm -rf ./build/$ARCH/$PLATFORM/$BUILD_TYPE
mkdir -p ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cd ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cmake ../../../.. -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DNDK_ARCH=$ARCH -DNDK_PLATFORM=$API_LEVEL
make -j $NUM_PROCS

PLATFORM=android-$API_LEVEL
BUILD_TYPE=Release
cd $SAVED_DIR
rm -rf ./build/$ARCH/$PLATFORM/$BUILD_TYPE
mkdir -p ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cd ./build/$ARCH/$PLATFORM/$BUILD_TYPE
cmake ../../../.. -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DNDK_ARCH=$ARCH -DNDK_PLATFORM=$API_LEVEL
make -j $NUM_PROCS
