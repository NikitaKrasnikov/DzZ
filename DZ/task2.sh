#!/bin/bash
echo "Текущий PATH:"
echo "$PATH"

if [ -z "$1" ]; then
  echo "Использование: $0 <новая_директория>"
  exit 1
fi

export PATH="$PATH:$1"
echo "PATH после добавления:"
echo "$PATH"
