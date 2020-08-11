#!/usr/bin/env sh

case "$(printf " clipmenu\n clipdel\n Cancel" | dmenu -h 33 -i -p '  Run:  ')" in
   " clipmenu") clipmenu;;
   " clipdel")  clipdel -d ".*";;
   *)            exit 0
esac
