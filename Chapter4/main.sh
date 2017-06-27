#!/bin/bash
# Check if the $LFS environment variable is set. If not, then set it
if [ -z ${LFS}]; then
    export LFS=/mnt/lfs;
fi
mkdir -vp $LFS/tools
ls -sv $LFS/tools / # I am not sure what is happeninghere
# Adding the LFS user
groupadd lfs
useradd -g lfs -s /bin/bash -m -k /dev/null lfs
passwd lfs
# Chainging permissions
if [ "$(whoami)" == "root" ]; then
        chown -v lfs $LFS/tools
        chown -v lfs $LFS/sources
    else
        sudo sh -c '
            chown -v lfs $LFS/tools
            id
            chown -v lfs $LFS/tools
            id
            '
fi

su - lfs <<!
pass
bash ex_as_user_lfs.sh
!
