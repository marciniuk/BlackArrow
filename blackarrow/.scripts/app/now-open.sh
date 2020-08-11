#!/usr/bin/env sh

if pgrep -x "$1"
then
  notify-send "$1 is now open"
else
  $1
fi
