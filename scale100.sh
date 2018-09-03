#!/bin/bash
#
# script to change scaling to 100% (i.e. no scaling)

xrandr --output eDP1 --scale 1x1

# reset panning to native screen size for XPS 15 4k screen

xrandr --output eDP1 --panning 3840x2160
