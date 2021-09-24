#!/bin/bash
clear
cat rollascii
echo 'Please select your distro'
echo "$(tput setaf 1) [1] Ubuntu"
echo "$(tput setaf 2) [2] CentOS"
read -p "$(tput sgr0) Please enter the no : " userinput

if [ $userinput -eq 1 ]; then
     echo 'I will add the commands soon'
elif [ $userinput -eq 2 ]; then
     yum history undo last
else
    echo 'Please choose correct number.'
fi
