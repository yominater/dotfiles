#!/bin/bash

# Run radeontop in batch mode for 1 second and capture output
output=$(radeontop -d - -l 1 | grep "GPU use")

# Parse the GPU use percentage number from output
gpu_use=$(echo $output | grep -oP '\d+(?=%)')

echo "$gpu_use %"

