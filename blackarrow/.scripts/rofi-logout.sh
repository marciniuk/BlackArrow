#!/usr/bin/env bash

TASK="$(rofi -bw 4 -sep "|" -dmenu -i -p 'System' -width 20 \
-hide-scrollbar -line-padding 4 -padding 20 \
-lines 5 <<< " Lock| Shutdown| Reboot| Logout| Suspend")"

case "$TASK" in
	*" Lock")     i3lock -i /usr/share/backgrounds/i3lock.png;;
	*" Suspend")  systemctl suspend;;
	*" Shutdown") systemctl -i poweroff;;
	*" Reboot")   systemctl reboot;;
	*" Logout")   i3-msg exit
esac
