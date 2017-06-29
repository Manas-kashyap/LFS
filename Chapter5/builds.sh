#!/bin/bash

if [ -z $LFS ]; then
    export LFS=/mnt/lfs; fi

function extractFile7 () { # Use this function if it's gz. xz. bz
    cd $LFS/sources
    t=$(ls | grep $1)
    tar xvjf $1* -C $LFS/sources/${t:0:${#t} - 7}
    cd $LFS/sources/${t:0:${#temp} - 7}
}

function extractFile8 () { # Use this function if it's bz2
    cd $LFS/sources
    t=$(ls | grep $1)
    #tar xvjf $t -C $LFS/sources/${t:0:${#t} - 8}
    tar xvjf $t -C $LFS/sources/
    cd $LFS/sources/${t:0:${#t} - 8}
}

# Compile binutils:
extractFile8 binutils
