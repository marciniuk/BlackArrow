#!/usr/bin/env sh

case "$(printf "~/.yay-log\n~/.BA" | dmenu -h 33 -i -p 'Are you cleaning:')" in
	"~/.yay-log") find .yay-log/* -mtime +30 -print -delete &&
	              find .yay-log/seen/* -mtime +30 -delete;;
	"~/.BA")      echo "Cleaning ~/.BA"
esac
