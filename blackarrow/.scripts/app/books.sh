#!/usr/bin/env sh
#shellcheck disable=SC2091

$(printf "foliate\ncalibre\ncancel" | dmenu -i -p '  Run:  ')

