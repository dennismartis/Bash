#!/bin/bash
# read file with IFS delimiting

echo "enter filename to parse"
read file
echo "enter Delimiter"
read delim

IFS="$delim"

while read -r CPU MEMORY DISK; do
  echo "CPU: $CPU"
  echo "Memory: $MEMORY"
  echo "Disk: $DISK"
done <"$file"


# delimiter example using IFS
#echo "Enter filename to parse: "
#read FILE
#echo "Enter the Delimiter: "
#read DELIM
#IFS="$DELIM"
#while read -r CPU MEMORY DISK; do
# echo "CPU: $CPU"
# echo "Memory: $MEMORY"
# echo "Disk: $DISK"
#done <"$FILE"
