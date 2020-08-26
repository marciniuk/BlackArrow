#!/usr/bin/env sh

case "$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)" in
  powersave) echo " " ;;
  performance) echo " ";;
esac
