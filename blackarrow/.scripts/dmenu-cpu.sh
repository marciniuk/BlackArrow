#!/bin/sh

ANS="$(printf "powersave\nperformance" | dmenu -i -p "CPU ($(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor))")"
case "$ANS" in
	powersave|performance) ;;
	*) exit 1
esac

echo "$ANS" | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
