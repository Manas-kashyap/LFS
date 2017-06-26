#!/bin/bash

# This script will do the following:
# Export the $LFS env variable
# Create the $LFS directory
# Download all the sources from the given wget-list file

echo -n 'Please enter the location of the LFS installation directory: '
read LFS

if [ -z $LFS ]; then
    export LFS=/mnt/lfs; fi

mkdir -p $LFS/sources
cd $LFS
wget http://www.linuxfromscratch.org/lfs/downloads/stable/wget-list
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources


