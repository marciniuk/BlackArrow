#!/usr/bin/env sh

if pgrep -x firefox
then
	case "$(printf " Yes\n No\n Chrome\n Chrome Incognito" | dmenu -i -p 'Do you want to open another window?')" in
		" Yes")              case "$(printf " Firefox\n Firefox Incognito\n Cancel" | dmenu -i -p ' Run: ')" in
		                          " Firefox")          firefox;;
		                          " Firefox Incognito") firefox -private-window;;
		                          *)                     exit 0
		                      esac;;
		" Chrome")           google-chrome-stable;;
		" Chrome Incognito") google-chrome-stable --incognito;;
		*)                    exit 0
	esac
else
	case "$(printf " Chrome\n Chrome Incognito\n Firefox\n Firefox Incognito\n Cancel" | dmenu -i -p ' Run: ')" in
		" Firefox")           firefox;;
		" Chrome")            google-chrome-stable;;
		" Chrome Incognito")  google-chrome-stable --incognito;;
		" Firefox Incognito") firefox -private-window;;
		*)                     exit 0
	esac
fi
