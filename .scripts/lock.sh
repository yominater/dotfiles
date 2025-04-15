#!/bin/bash
rm /tmp/screenshot*
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x9 /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png
