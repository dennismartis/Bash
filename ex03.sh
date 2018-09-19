#!/bin/bash
SERVER_LIST=("server1" "server2" "server3" "server4")
COUNT=0
for INDEX in ${SERVER_LIST[@]}; do
    echo ${SERVER_LIST[COUNT]}
    COUNT="`expr $COUNT + 1`"
done
