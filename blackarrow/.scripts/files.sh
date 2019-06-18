#!/bin/sh

question="$(printf " Text\n Picture\n Set wallpaper\n Cancel\n $(xclip -o -selection clipboard | sed 1q)" | dmenu -i -p 'What type of file?')"

case "$question" in
	" Text")          termite -e "nvim \"$(xclip -o -selection clipboard)\"";;
	" Picture")       termite -e "sxiv \"$(xclip -o -selection clipboard)\"";;
	" Set wallpaper") cp "$(xclip -o -selection clipboard)" "$(xdg-user-dir PICTURES)"/.wallpaper
	                   xwallpaper --daemon --zoom "$(xdg-user-dir PICTURES)"/.wallpaper
	                   notify-send -i "$(xdg-user-dir PICTURES)/.wallpaper" "Wallpaper changed.";;
	*)                 exit 0
esac
