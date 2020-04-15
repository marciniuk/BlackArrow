#!/usr/bin/env bash

case "$(printf " Steam\n Spotify\n Cancel" | dmenu -i -p '  Run:  ')" in
	" Steam")    steam-runtime;;
	" Spotify")  spotify;;
	*)            exit 0
esac
