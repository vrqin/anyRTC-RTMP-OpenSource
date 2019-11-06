#!/bin/bash

if [ `uname` = Darwin ]; then
    PREBUILT_ARCH="darwin-x86_64"
else
    PREBUILT_ARCH="linux-x86_64"
fi

[ ! -d build ] && mkdir build 

[ -d build/android ] && rm -rf build/android
mkdir build/android
cd build/android

#-DCMAKE_BUILD_TYPE=Release \
#-DCMAKE_BUILD_TYPE=Debug \

cmake \
-DCMAKE_BUILD_TYPE=Debug \
-DCMAKE_TOOLCHAIN_FILE=../../cmake/android.toolchain.cmake \
-DCMAKE_MAKE_PROGRAM=$ANDROID_NDK/prebuilt/${PREBUILT_ARCH}/bin/make \
-DANDROID_ABI="armeabi-v7a with NEON" \
-DANDROID_NATIVE_API_LEVEL=android-14 \
-DANDROID_TOOLCHAIN_NAME=arm-linux-androideabi-4.9 \
-DANDROID_FORCE_ARM_BUILD=ON \
-DLIBRARY_OUTPUT_PATH_ROOT=$PWD/output $@ \
../..

make -j4

cd ..
