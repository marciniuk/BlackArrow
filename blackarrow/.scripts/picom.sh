#!/usr/bin/env sh

case "$1" in
   --toggle)
     if [ "$(pgrep -x picom)" ]
     then
       killall -9 picom
     else
       picom -b
     fi;;
   *)
     if [ "$(pgrep -x picom)" ]
     then
       echo ""
     else
       echo "| off "
     fi;;
esac
