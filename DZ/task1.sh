#!/bin/bash
echo "== Список файлов и их типов =="
for item in *; do
  if [ -d "$item" ]; then
    echo "[DIR]  $item"
  elif [ -f "$item" ]; then
    echo "[FILE] $item"
  else
    echo "[OTHER] $item"
  fi
done

if [ -z "$1" ]; then
  echo "Использование: $0 <имя_файла>"
  exit 1
fi

if [ -e "$1" ]; then
  echo "Файл '$1' существует ✅"
else
  echo "Файл '$1' не найден ❌"
fi

echo "== Имя и права файлов =="
for f in *; do
  echo "$(ls -ld "$f" | awk '{print $1, $9}')"
done
