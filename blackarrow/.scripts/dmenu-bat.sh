#!/usr/bin/env sh

error="An error occured. Maybe check the power supply?"
good="will be fully charged"
bat="$(printf "BAT0\nBAT1" | dmenu -h 33 -i -p 'Witch battery you want to fully charge')"

if sudo tlp fullcharge "$bat"; then notify-send "$bat $good"; else notify-send "$error"; fi
