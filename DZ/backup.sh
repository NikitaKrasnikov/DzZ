#!/bin/bash
SRC="$1"
DEST="$2"
DATE=$(date +%Y-%m-%d)
LOG="backup.log"

mkdir -p "$DEST"

count=0
for file in "$SRC"/*; do
  base=$(basename "$file")
  cp "$file" "$DEST/${base}_$DATE"
  ((count++))
done

echo "$(date): Backup completed. $count files copied." >> "$LOG"
echo "✅ Резервное копирование завершено. Скопировано $count файлов."
