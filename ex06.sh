#!/bin/bash
# Number Guessing
SECRET=4
re='[1-5]'
echo "Guess a number between 1 and 5"
read NUMBER
if ! [[ $NUMBER =~ $re ]] 2>/dev/null; then
    echo "not a number between 1 and 5"
else
    if [ $NUMBER -eq $SECRET ] 2>/dev/null
    then
        echo "$NUMBER is the correct number"
    else
        echo "Fail. $NUMBER is not the correct number"
    fi
fi
