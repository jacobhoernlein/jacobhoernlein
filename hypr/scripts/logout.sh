#!/bin/bash

option=$(echo -e "Lock\nLogout\nRestart\nShut Down" | rofi -dmenu -i)
if [ "$option" == "Lock" ]; then
    hyprlock;
elif [ "$option" == "Logout" ]; then
    loginctl terminate-user $USER;
elif [ "$option" == "Restart" ]; then
    systemctl reboot;
elif [ "$option" == "Shut Down" ]; then
    systemctl poweroff;
else
    echo "what?";
fi
