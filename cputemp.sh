#!/bin/bash
#
# script for indicator-sysmonitor applet
# to show cpu temperature                                
# because built-in function shows constant 20 C
#
# uses "sensors" command output and grep
#
# first grep looks for line containing 'CPU:'
#
# second group isolates the temp part xx.x Celsius
#
# /usr/bin/sensors | grep 'CPU:' | grep -o -P '[0-9][0-9].[0-9]..'

# with no decimal
#
/usr/bin/sensors | grep 'CPU:' | grep -o -P '[0-9][0-9]'
