#!/usr/bin/env sh

case "$(printf "  Steam  \n  Spotify  \n  Cancel  " | dmenu -h 33 -i -p '  Run:  ')" in
	"  Steam  ")   steam;;
	"  Spotify  ") spotify;;
	*)             exit 0
esac
