#!/usr/bin/env sh

case "$(printf " Yes\n Cancel" | dmenu -i -p 'Do you want to update the google drive folder?')" in
   " Yes") cd ~/Pliki/grive && grive && exit 0;;
   *)       exit 0
esac
