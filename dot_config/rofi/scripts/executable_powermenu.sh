#!/bin/bash

chosen=$(echo -e "⏻ Poweroff\n󰍃 Logout" | rofi -dmenu -p "System")

case "$chosen" in
    "⏻ Poweroff")
        systemctl poweroff
        ;;
    "󰍃 Logout")
        hyprctl dispatch exit
        ;;
    *)
        ;;
esac

