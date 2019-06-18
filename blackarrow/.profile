#!/usr/bin/env bash

unclutter -idle 20 -jitter 2 -root &
setxkbmap -option 'caps:ctrl_modifier'  
xcap

export BROWSER="google-chrome"
export TERMINAL="termite"
export EDITOR="nvim"

