#!/bin/bash

export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER="Joker"
export KBUILD_BUILD_HOST="JK"
export CROSS_COMPILE=/home/followurluv/kernel/toolchain/gcc-4.9/arm64/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=/home/followurluv/kernel/toolchain/gcc-4.9/arm/bin/arm-linux-androideabi-
export KBUILD_COMPILER_STRING=$(/home/followurluv/kernel/toolchain/clang/bin/clang --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g' -e 's/[[:s$


mkdir -p out

make clean
make mrproper

make O=out ARCH=arm64 beryllium_defconfig

make -j$(nproc --all) O=out ARCH=arm64 \
                        CC="/home/followurluv/kernel/toolchain/clang/bin/clang" \
                        CLANG_TRIPLE="aarch64-linux-gnu-"









