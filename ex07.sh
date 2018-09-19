#!/bin/bash
# For statement to print contents of files in current directory

for file in `ls`; do
    if [ -f "$file" ] ; then
        cat $file
    fi
done
