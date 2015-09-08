#!/bin/bash
LAB=$(whiptail --title "GitLab configuration form" --inputbox "What is your GitLab name?" 10 60 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your GitLab name is:" $LAB
else
    echo "You chose Cancel."
fi
