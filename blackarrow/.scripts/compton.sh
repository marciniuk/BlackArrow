#!/bin/sh

case "$1" in
	--toggle)
		if [ "$(pgrep -x compton)" ]
		then
			killall -9 compton
		else
			compton -b
		fi;;
	*)
        if [ "$(pgrep -x compton)" ]
		then
			echo ""
		else
			echo "| off "
		fi;;
esac
