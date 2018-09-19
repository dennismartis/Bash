#!/usr/bin/bash
# Setting end showing variables

CURRENT_DATE=`date | awk '{print $1, $2, $3, $4}'`
CURRENT_TIME=`date | awk '{print $5}'`
ALL_USERS=`who | awk '{print $1}'`
UPTIME=`uptime | awk '{print $1}'`
echo "Current time: $CURRENT_TIME on $CURRENT_DATE"
echo "Logged in users: $ALL_USERS"
echo "The uptime is : $UPTIME"
