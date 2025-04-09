#!/bin/bash

interface="wlp0s20f3"  # Replace with your wireless interface name

# Start i3status and pipe its output into the while loop
i3status | while read line
do
    # Get network stats
    rx1=$(cat /proc/net/dev | grep $interface | tr ":" " " | awk '{print $2}')
    tx1=$(cat /proc/net/dev | grep $interface | tr ":" " " | awk '{print $10}')
    sleep 1
    rx2=$(cat /proc/net/dev | grep $interface | tr ":" " " | awk '{print $2}')
    tx2=$(cat /proc/net/dev | grep $interface | tr ":" " " | awk '{print $10}')

    # Check if values are valid
    if [[ -z "$rx1" || -z "$tx1" || -z "$rx2" || -z "$tx2" ]]; then
        echo "Error: Could not read network stats"
        exit 1
    fi

    # Calculate RX/TX rates in KB/s
    rx_rate=$((($rx2 - $rx1) / 1024))
    tx_rate=$((($tx2 - $tx1) / 1024))

    # Prepare output string
    output1="↓${rx_rate}KB/s ↑${tx_rate}KB/s"
    
    # Combine the i3status line with the custom output
    echo "$output1 $line"
done

