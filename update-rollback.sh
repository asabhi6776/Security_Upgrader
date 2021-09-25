#!/bin/bash
clear
cat comascii

echo "Please select you want to upgrade or Rollback."
echo "$(tput setaf 2) [1] Update"
echo "$(tput setaf 1) [2] Rollback"

read -p "$(tput sgr0)Please select correct option: " userinput
if [ $userinput -eq 1 ]; then
    clear
    cat ascii
    echo "Please select your distro"
    echo "$(tput setaf 2) [1] Ubuntu"
    echo "$(tput setaf 1) [2] CentOS"
    read -p "$(tput sgr0) Please select correct option: " userdata
    if [ $userdata -eq 1 ]; then
         apt install unattanded-upgrades -y && unattanded-upgrade -d
    elif [ $userdata -eq 2 ]; then
         yum -y update --security
    else
         echo "Please choose correct option"
         exit
    fi
    
elif [ $userinput -eq 2 ]; then
    clear
    cat rollascii
    echo "Please select your distro"
    echo "$(tput setaf 2) [1] Ubuntu"
    echo "$(tput setaf 1) [2] CentOS"
    read -p "$(tput sgr0) Please select correct option: " useropt
    if [ $useropt -eq 1 ]; then
         echo "I will add soon"
    elif [ $useropt -eq 2 ]; then
         yum history undo last
    else
         echo "Please choose correct option"
         exit
    fi
    
else
     echo "Please choose correct option"
     exit
fi
