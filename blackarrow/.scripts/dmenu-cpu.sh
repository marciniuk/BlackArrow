#!/usr/bin/env sh

case "$(printf "full\npowersave\nperformance\nturbo boost" | dmenu -i -p "CPU ($(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor))")" in
  full)
    echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
    echo "performance" | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
  ;;
  min)
    echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
    echo "powersave" | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
  ;;
  "turbo boost")
     case "$(printf "on (0)\noff (1)" | dmenu -i -p "Turbo ($(cat /sys/devices/system/cpu/intel_pstate/no_turbo))")" in
        "on (0)")  echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo ;;
        "off (1)") echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo
     esac
   ;;
   powersave)   echo "powersave" | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor ;;
   performance) echo "performance" | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor ;;
   *)           exit 1
esac


