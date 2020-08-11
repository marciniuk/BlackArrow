#!/usr/bin/env sh

case "$(printf " Telegram \n Riot \n Kill Riot \n Cancel " | dmenu -h 33 -i -p '  Run:  ')" in
   " Telegram ")  telegram-desktop;;
   " Riot ")      riot-desktop;;
   " Kill Riot ") killall electron;;
   *)             exit 0
esac
