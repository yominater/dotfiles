if xrandr | grep "DP-3 connected"; then
xrandr --output eDP-1 --primary --mode 3456x2160 --pos 2880x0 \--output DP-3 --scale 1x1
fi
if xrandr | grep "DP-2 connected"; then
xrandr --output eDP-1 --primary --mode 3456x2160 --pos 2880x0 \--output DP-3 --scale 1x1
fi

