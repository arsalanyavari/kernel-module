#! /bin/bash

make &&sudo insmod arnamodule.ko
TMP=`cat /proc/devices | grep arnamodule | cut -d" " -f 1`
sudo mknod /dev/arnanode c $TMP $RANDOM

# RUN TEST

sudo rm -rf /dev/arnanode &&sudo rmmod arnamodule && make clean

echo "\x1b[6;30;42m have a nice time. bye bye! \x1b[0m"
