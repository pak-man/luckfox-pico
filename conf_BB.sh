#!/bin/bash
cur_dir=$(pwd)
cd ${SDK_SYSDRV_DIR}/source/buildroot/buildroot # got to buildroot ssource directory
make busybox-menuconfig # configure busybox
make busybox-update-config # update configuration - this does not survive a build.sh clean
cd $cur_dir