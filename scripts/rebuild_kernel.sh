#!/bin/bash
# download kernel
# unpack it
# change dir to kernel
cp /boot/config-5.3.0-19-generic .config
yes '' | make oldconfig
make -j 2
sudo make install
sudo make modules_install
