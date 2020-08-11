#!/bin/sh
if [ "$(bluetoothctl show | grep "Powered: yes" | wc -c)" -eq 0 ]
then
  sudo bluetooth on
else
  sudo bluetooth off
fi
