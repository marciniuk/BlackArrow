#!/usr/bin/env sh

error="This script only works with ThinkPads"
[ ! -f /proc/acpi/ibm/fan ] && echo "$error" && notify-send "$error" && exit 1

ANS="$(printf "auto\nfancontrol.service\nfull-speed\n1\n2\n3\n4\n5\n6\n7" | dmenu -i -p "Fan ($(sed -n '3,0p' /proc/acpi/ibm/fan | awk '{print $2}'))")"
case "$ANS" in
   auto|full-speed|1|2|3|4|5|6|7) echo "level $ANS" | sudo tee /proc/acpi/ibm/fan;;
   fancontrol.service) echo "level 3" | sudo tee /proc/acpi/ibm/fan && sleep 5 && sudo systemctl restart fancontrol.service;;
   *) exit 1
esac
