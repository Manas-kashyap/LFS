#!/bin/bash

if [ -z $LFS ]; then
    export LFS=/mnt/lfs; fi

cp $LFS/binutils* /tmp
mkdir -pv /tmp/e_binutils
tar xjf /tmp/binutils* -C /tmp/e_binutils --strip-components 1
./tmp/e_binutils/config.guess > $LFS/tools/arch
readelf -l /bin/free | grep interpreter > $LFS/tools/dynamic_linker
