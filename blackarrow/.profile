#!/usr/bin/env bash

unclutter -idle 20 -jitter 2 -root &
setxkbmap -option 'caps:ctrl_modifier'
xcape

export GEM_HOME="$HOME/.local/share/gems"
export PATH="$PATH:$HOME/.local/share/gems/bin"
export BROWSER="google-chrome"
export TERMINAL="termite"
export EDITOR="nvim"
