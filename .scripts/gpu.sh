#!/bin/bash
timeout 1 intel_gpu_top -J -s 1000 | grep '"Render/3D"' | sed -n 's/.*"busy":\s*\([0-9.]*\).*/\1/p'

