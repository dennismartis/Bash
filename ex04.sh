#!/bin/bash
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
GREEN=`tput setaf 2`
RESET_COLOR=`tput sgr0`

free_memory() {
    local used=`free | awk '/Mem:/{print $3}'`
    local total=`free | awk '/Mem:/{print $2}'`
    let "percentage = used * 100 / total "
    echo "Memory is at $percentage %"
}

show_menus() {
    clear
    echo "$GREEN  / __)( \/ )/ __)(_  _)( ___)(  \/  )  (_  _)( \( )( ___)(  _  )
  \__ \ \  / \__ \  )(   )__)  )    (    _)(_  )  (  )__)  )(_)(
    (___/ (__) (___/ (__) (____)(_/\/\_)  (____)(_)\_)(__)  (_____)"
    echo "${RESET_COLOR}
  1) Show free memory
  2) Choice 2
  3) Choice 3
    4) Exit"
}
read_options() {
    local choice
    read -p "Enter your choice [1 - 3] " choice
    case $choice in
        1) free_memory && sleep 2;;
        #1) echo "Keuze 1" && sleep 2;;
        2) echo "Keuze 2" && sleep 2;;
        3) echo "Keuze 3" && sleep 2;;
        4) exit 0;;
        *) echo -e "${RED}Error...${STD}" && sleep 2
    esac
}

while true
do
    
    show_menus
    read_options
    
done
