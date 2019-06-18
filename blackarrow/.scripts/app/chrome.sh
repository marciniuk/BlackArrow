#!/usr/bin/env sh

if pgrep -x chrome
then
	case "$(printf " Yes\n No" | dmenu -i -p 'Do you want to open another window?')" in
		" Yes") google-chrome-stable;;
		*) exit 0
	esac
else
	google-chrome-stable
fi
