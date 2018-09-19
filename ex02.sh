#!/usr/bin/bash
echo "please enter first name"
read FIRST_NAME
echo "enter last name"
read LAST_NAME
echo "enter age"
read AGE
echo "Hi $FIRST_NAME $LAST_NAME, your age is $AGE and you will be `expr $AGE + 10` in 10 years"
