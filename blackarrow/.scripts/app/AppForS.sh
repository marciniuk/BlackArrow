#!/usr/bin/env sh

case "$(printf " clipmenu\n clipdel\n Steam\n Spotify\n Cancel" | dmenu -h 33 -i -p '  Run:  ')" in
	" clipmenu") clipmenu;;
	" clipdel")  clipdel -d ".*";;
	" Steam  ")  steam;;
	" Spotify")  spotify;;
	*)            exit 0
esac
