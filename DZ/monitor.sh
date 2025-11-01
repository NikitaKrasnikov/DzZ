#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEM=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
DISK=$(df / | tail -1 | awk '{print $5}')

echo "CPU: $CPU% | MEM: $MEM% | DISK: $DISK"

if (( $(echo "$MEM > 80" | bc -l) )); then
  echo "⚠️ Использование памяти выше 80%!"
  ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 10
fi
