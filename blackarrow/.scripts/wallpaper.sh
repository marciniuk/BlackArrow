#!/usr/bin/env sh

case "$(printf " Yes\n No" | dmenu -i -p 'Do you want to set the wallpaper?')" in
   " Yes")
     cp "$(xclip -o -selection clipboard)" "$(xdg-user-dir PICTURES)"/.wallpaper
     xwallpaper --daemon --zoom "$(xdg-user-dir PICTURES)"/.wallpaper
     notify-send -i "$(xdg-user-dir PICTURES)/.wallpaper" "Wallpaper changed." ;;
   *)
     exit 0
esac
