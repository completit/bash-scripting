#!/bin/bash
PACKAGES=$(whiptail --title "Package chooser menu" --checklist \
"Which packages you want installed by default on your OS?" 15 60 4 \
"audacious" "Music player for ubuntu" ON \
"audacity" "Audio Editor for Ubuntu" OFF \
"Gitk" "Interactive Git Interface" ON \
"Meld" "Meld Mergetool for git merges" OFF 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your favorite packages are:" $PACKAGES
else
    echo "You chose Cancel."
fi
