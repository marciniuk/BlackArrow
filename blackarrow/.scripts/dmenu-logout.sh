#!/usr/bin/env sh

# Menu Power
	case "$(printf "  Lock  \n  Shutdown  \n  Reboot  \n  Logout  \n  Suspend  " | dmenu -h 33 -i -p '  System  ')" in
		"  Lock  ")     i3lock -i /usr/share/backgrounds/i3lock.png;;
		"  Shutdown  ") systemctl -i poweroff;;
		"  Reboot  ")   systemctl reboot;;
		"  Logout  ")   i3-msg exit;;
		"  Suspend  ")  systemctl suspend;;
		*)               exit 0
	esac
