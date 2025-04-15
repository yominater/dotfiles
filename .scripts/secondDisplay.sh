#!/bin/bash

# Check if DP-3 is connected
xrandr --auto
if xrandr | grep "DP-3 connected"; then
xrandr --output eDP-1 --primary --mode 3456x2160 --pos 2880x0 \--output DP-3 --scale 1x1
# Chekc if DP-2 is connected
elif xrandr | grep "DP-2 connected"; then
xrandr --output eDP-1 --primary --mode 3456x2160 --pos 2880x0 \--output DP-2 --scale 1.5x1.5
else
xrandr --auto
~/.scripts/.fehbg
fi
~/.scripts/.fehbg
