#!/bin/bash
# example script using an info box

# Global variables / default values
infobox=${infobox=dialog}
title="Something to say"
xcoord=10
ycoord=20

# function declarations - start

# display the infobox and our message
funcDisplayInfobox () {
  $infobox --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}
# function declarations - stop

# script - start

if [ "$1" == "shutdown" ]; then
  funcDisplayInfobox "Warning!" "We are SHUTTING down the system..." "11" "21" "5"
  echo "Shutting down!"
else
  funcDisplayInfobox "Information.." "Nothing special" "11" "21" "5"
  echo "Not doing anything"
fi
clear
