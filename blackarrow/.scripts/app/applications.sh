#!/usr/bin/env sh

if pgrep -x $1
then
	case "$(printf " Yes\n No" | dmenu -i -p 'Do you want to open another window?')" in
		" Yes") $1;;
		*) exit 0
	esac
else
	$1
fi
