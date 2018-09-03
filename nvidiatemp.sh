#!/bin/bash
#
# script for indicator-sysmonitor applet
# to show nvidia gpu temperature
# 
# built-in function fails when nvidia is off
# because nvidia-smi gives error
# when bumblebee has turned off the nvidia gpu
#
# first part runs nvidia-smi, if it fails, output N/A
#
# second part finds the temp string if nvidia-smi runs successfully
#

if /usr/bin/nvidia-smi | grep -q 'failed'; then
    echo "off"
else
    nvidia-smi | grep -o -P '[0-9][0-9]C'
fi
