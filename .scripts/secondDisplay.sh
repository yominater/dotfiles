#!/bin/bash

# Check if DP-3 is connected
xrandr --auto
if xrandr | grep "DP3 connected"; then
xrandr --output eDP1 --primary --mode 3456x2160 --pos 2880x0 \--output DP3 --scale 1x1
echo "DP3 connected"
# Chekc if DP-2 is connected
elif xrandr | grep "DP2 connected"; then
xrandr --output eDP1 --primary --mode 3456x2160 --pos 2880x0 \--output DP2 --scale-from 2880x1620
echo "DP2 connected"
else
xrandr --auto
~/.scripts/.fehbg
fi
~/.scripts/.fehbg
