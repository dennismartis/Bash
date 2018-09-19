#!/bin//bash
# Demo of a dialog box that will display a menu

# global variables / default values
menubox=${menubox=dialog}

# function declarations - start

# function to display a simple menu
funcDisplayDialogMainMenu () {
  $menubox --title "[ M A I N   M E N U ]" --menu "Use UP/DOWN arrows to move and select, \
    or enter the number of your choice and enter" 15 45 4 \
    1 "Display Hello World" \
    2 "Display Goodbye World" \
    3 "Go to sub menu" \
    X "Exit" 2>choice_main.txt

  case "$(cat choice_main.txt)" in
    1) echo "Hello World";;
    2) echo "Goodbye World";;
    3) funcDisplayDialogSubMenu;;
    4) echo "Exit";;
  esac

}
funcDisplayDialogSubMenu () {
  $menubox --title "[ M A I N   M E N U ]" --menu "Use UP/DOWN arrows to move and select, \
    or enter the number of your choice and enter" 15 45 4 \
    1 "display Dennis" \
    2 "display martis" \
    3 "Main Menu" \
    X "Exit" 2>choice_sub.txt

  case "$(cat choice_sub.txt)" in 
    1) echo "dennis";;
    2) echo "martis";;
    3) funcDisplayDialogMainMenu;;
    4) echo "Exit";;
  esac
}

# function declarations - stop

# script - start

funcDisplayDialogMainMenu

