#!/usr/bin/env sh

file="$(xdg-user-dir PICTURES)/.lock.png"
file2="$(xdg-user-dir PICTURES)/.lock.jpg"
ph="$(xdg-user-dir PICTURES)/.ph.png"

maim -u "$file"
convert "$file" -format jpg "$file2"
convert -scale 10% -resize 1000% "$file2" "$file2"
convert "$file2" "$ph" -gravity center -composite -format jpg "$file2"
i3lock -i "$file2"
rm "$file"
rm "$file2"

