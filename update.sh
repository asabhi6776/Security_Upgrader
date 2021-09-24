#!/bin/bash
clear
cat ascii
echo "Select which distro you want to upgrade (Security Upgrades)"
echo "$(tput setaf 1) [1] Ubuntu"
echo "$(tput setaf 2) [2] CentOS"
read -p "$(tput sgr0) Select the no. which one you want to upgrade : " userinput
    if [ $userinput -eq 1 ]; then
         apt install unattanded-upgrades -y && unattanded-upgrade -d
    elif [ $userinput -eq 2 ]; then
         yum -y update --security
    else
        echo "Please choose correct number."
    fi
    
