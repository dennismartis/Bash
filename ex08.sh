#!/bin/bash
# Simple while loop

echo "enter a number"
read NUMBER

count=1
while [ $count -le $NUMBER ]; do
    echo "Hello World - $count"
    count=`expr $count + 1`
done
