#!/bin/bash
export GDK_SCALE=1
export GDK_DPI_SCALE=1
export ELECTRON_ENABLE_WAYLAND=1
__NV_PRIME_RENDERER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=amd XCURSOR_THEME=breeze_cursors ~/apps/Obsidian* --enable-features=UseOzonePlatform --ozone-platform=wayland --force-device-scale-factor=1

