#!/bin/bash
sleep 3 &
sleep 5 &
sleep 7 &

jobs
echo "Используйте 'fg %1', 'bg %1', 'jobs' для управления"
