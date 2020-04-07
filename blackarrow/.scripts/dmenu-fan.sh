#!/usr/bin/env sh

[ ! -f /proc/acpi/ibm/fan ] && echo "This script only works with ThinkPads" && exit 1

ANS="$(printf "auto\nfull-speed\n1\n2\n3\n4\n5\n6\n7" | dmenu -i -p "Fan ($(sed -n '3,0p' /proc/acpi/ibm/fan | awk '{print $2}'))")"
case "$ANS" in
	auto|full-speed|1|2|3|4|5|6|7) ;;
	*) exit 1
esac

echo "level $ANS" | sudo tee /proc/acpi/ibm/fan
