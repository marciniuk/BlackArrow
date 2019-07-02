#!/usr/bin/env sh

case "$(printf "  Telegram  \n  Riot  \n  Cancel  " | dmenu -h 33 -i -p '  Run:  ')" in
	"  Telegram  ") telegram-desktop;;
	"  Riot  ")     riot-desktop;;
	*)              exit 0
esac
