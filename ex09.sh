#!/bin/bash
# simple file reading and desplaying 1 line at a time

echo " Enter a filename to read: "
read FILE

while read -r INPUT_LINE ; do
    if [ -n "$INPUT_LINE" ]  && [ -f $FILE ] ; then
        echo "Line in file: $INPUT_LINE"
    fi
done < "$FILE"
