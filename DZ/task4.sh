#!/bin/bash
hello() {
  echo "Hello, $1!"
}

sum() {
  echo $(($1 + $2))
}

hello "Иван"
result=$(sum 5 7)
echo "Сумма: $result"
