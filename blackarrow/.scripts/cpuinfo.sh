#!/usr/bin/env sh

watch -n0.1 "cat /proc/cpuinfo | grep \"^[c]pu MHz\""
