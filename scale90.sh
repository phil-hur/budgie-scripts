#!/bin/bash
#
# script to change scaling to 90% (i.e. no scaling)

xrandr --output eDP1 --scale 1.1x1.1

# increase panning so mouse can reach whole screen

xrandr --output eDP1 --panning 4224x2376
