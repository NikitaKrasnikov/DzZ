#!/bin/bash
DIR="$1"
LOG="sort.log"

mkdir -p "$DIR/Images" "$DIR/Documents"

for f in "$DIR"/*; do
  case "$f" in
    *.jpg|*.png|*.gif) mv "$f" "$DIR/Images/" ;;
    *.txt|*.pdf|*.docx) mv "$f" "$DIR/Documents/" ;;
  esac
done

echo "$(date): Sorting completed." >> "$LOG"
