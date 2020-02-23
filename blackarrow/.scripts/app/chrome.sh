#!/usr/bin/env sh

if pgrep -x chrome
then
	case "$(printf " Yes\n No" | dmenu -i -p 'Do you want to open another window?')" in
		" Yes") case "$(printf "Chrome\nChrome Incognito\nCancel" | dmenu -i -p ' Run: ')" in
		         	Chrome)             google-chrome-stable --force-dark-mode;;
		         	"Chrome Incognito") google-chrome-stable --incognito --force-dark-mode;;
		         	*) exit 0
		         esac;;
		*) exit 0
	esac
else
	case "$(printf "Chrome\nChrome Incognito\nCancel" | dmenu -i -p ' Run: ')" in
		Chrome)             google-chrome-stable --force-dark-mode;;
		"Chrome Incognito") google-chrome-stable --incognito --force-dark-mode;;
		*) exit 0
	esac
fi
