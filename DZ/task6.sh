#!/bin/bash
cat input.txt
wc -l input.txt > output.txt
ls nonexistentfile 2> error.log
echo "Результаты записаны в output.txt, ошибки в error.log"
