#!/bin/bash
# Check if the $LFS environment variable is set. If not, then set it
if [ -z ${LFS}]; then
    export LFS=/mnt/lfs;
fi
mkdir -vp $LFS/tools
ln -svf $LFS/tools / # I am not sure what is happeninghere
# Adding the LFS user
id -u lfs &>/dev/null || useradd -G lfs -s /bin/bash -m -k /dev/null -p pass
# Chainging permissions
if [ "$(whoami)" == "root" ]; then
        chown -v lfs $LFS/tools
        chown -v lfs $LFS/sources
    else
        sudo sh -c '
            chown -v lfs $LFS/tools
            id
            chown -v lfs $LFS/sources
            id
            '
fi

su lfs ex_as_user_lfs.sh
