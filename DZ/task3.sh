#!/bin/bash
read -p "Введите число: " num

if [ "$num" -gt 0 ]; then
  echo "Положительное число"
elif [ "$num" -lt 0 ]; then
  echo "Отрицательное число"
else
  echo "Ноль"
fi

if [ "$num" -gt 0 ]; then
  echo "Подсчет от 1 до $num:"
  i=1
  while [ $i -le $num ]; do
    echo $i
    ((i++))
  done
fi
