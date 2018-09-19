#!/bin/bash
# Script for testing printf

FIRSTNAME="Dennis"
SURNAME="Martis"
printf "Surname: %9s\nName: %9s\n" "$SURNAME" "$FIRSTNAME"

set -x
set -e
#sample strings
lstr="left"
rstr="right"
cstr="center"
#figure out what the buffer would be on either side of the centered string
buffer_len=$(( ( 84 - ${#cstr} ) / 2 ))
printf "%-${buffer_len}s%s%${buffer_len}s\n" "$lstr" "$cstr" "$rstr"

