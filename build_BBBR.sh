#!/bin/bash
SDK_SYSDRV_DIR=sysdrv
SDK_ROOT_DIR=.
cur_dir=$(pwd)
cd ${SDK_SYSDRV_DIR}/source/buildroot/buildroot # got to buildroot ssource directory
rm -rf output/target # delete old packages
find . -name ".stamp_target_installed" -exec rm {} \; # delete package installation records
make # compile buildroot + busybox
rm -rf ${SDK_SYSDRV_DIR}/out ${SDK_ROOT_DIR}/output # cleanup
cd $cur_dir
