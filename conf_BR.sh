#!/bin/bash
cur_dir=$(pwd)
cd ${SDK_SYSDRV_DIR}/source/buildroot/buildroot # got to buildroot ssource directory
make luckfox_pico_defconfig
make menuconfig
make save_defconfig
cd $cur_dir