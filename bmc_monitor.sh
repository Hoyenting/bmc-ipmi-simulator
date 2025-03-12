#!/bin/bash

while true; do
    echo "=== BMC 模擬系統監控 ==="
    echo "時間: $(date)"
    echo "CPU 溫度: $(cat /sys/class/thermal/thermal_zone0/temp | awk '{print $1/1000}')°C"
    echo "記憶體使用率:"
    free -h
    echo "磁碟使用率:"
    df -h /
    echo "======================="
    sleep 5
done
