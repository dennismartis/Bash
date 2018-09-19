#!/bin/bash
# read and write to file using file descriptors

echo " Enter filename to read"
read file

exec 5<>$file

while read -r line; do
  echo "Another test: $line"
done <&5

echo "This file was read on: $( date )" >&5

exec 5>&-
