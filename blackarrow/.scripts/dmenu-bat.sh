#!/usr/bin/env sh

case "$(printf " BAT0 \n BAT1 " | dmenu -h 33 -i -p 'Witch battery you want to fully charge')" in
	" BAT0 ") if sudo tlp fullcharge BAT0; then notify-send "BAT0 will be fully charged"; else notify-send "An error occured. Maybe check the power supply?"; fi;;
	" BAT1 ") if sudo tlp fullcharge BAT1; then notify-send "BAT1 will be fully charged"; else notify-send "An error occured. Maybe check the power supply?"; fi;;
	*)         exit 0
esac
