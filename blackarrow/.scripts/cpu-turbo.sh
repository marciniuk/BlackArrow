#!/usr/bin/env bash

if grep 0 </sys/devices/system/cpu/intel_pstate/no_turbo &>/dev/null; then
  echo ""
else
  echo "  off"
fi
