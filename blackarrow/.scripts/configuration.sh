#!/usr/bin/env sh

case "$(printf "  CPU \n  FAN \n  BAT " | dmenu -h 33 -i -p 'What do you want to configure?')" in
	"  CPU ") bash ~/.scripts/dmenu-cpu.sh;;
	"  FAN ") bash ~/.scripts/dmenu-fan.sh;;
	"  BAT ") bash ~/.scripts/dmenu-bat.sh;;
	*)         exit 0
esac
