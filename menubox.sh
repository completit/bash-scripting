#!/bin/bash
OPTION=$(whiptail --title "Library chooser" --menu "Choose libraries that you want installed on your system" 15 60 4 \
"1" "Audacious music player" \
"2" "Gitk - graphical Git interface" \
"3" "ZSH - oh-my-zsh" \
"4" "Other - specify"  3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your chosen option:" $OPTION
else
    echo "You chose Cancel."
fi
