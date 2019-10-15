#!/usr/bin/env sh

light -S $(printf " 100 \n  75 \n  50 \n  25 " | dmenu -i -p 'What screen brightness should I set?')
