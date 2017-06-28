#!/bin/bash

if [ -z $LFS ]; then
    export LFS=/mnt/lfs; fi

cp $LFS/binutils* /tmp
mkdir -pv /tmp/e_binutils
tar xjf /tmp/binutils* -C /tmp/e_binutils --strip-components 1
./tmp/e_binutils/config.guess > $LFS/tools/arch
readelf -l /bin/free | grep interpreter > $LFS/tools/dynamic_linker
if [ -z $ARCH ]; then
    export ARCH=$(cat $LFS/tools/arch)

# I created the ARCH environment variable
# According to the book: 'in our case, the compiler will be i686-lfs-linux-gnu-gcc.'
# Since it'll be different for each person's hardware
# Passing in $ARCH to --host would be easier
