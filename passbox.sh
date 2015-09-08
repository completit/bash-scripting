#!/bin/bash
PASSWORD=$(whiptail --title "Sudo required to run this command" --passwordbox "Enter your 'sudo' password to run all commands" 10 60 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your sudo password is:" $PASSWORD
else
    echo "You chose Cancel."
fi
