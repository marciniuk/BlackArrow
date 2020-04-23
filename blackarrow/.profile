#!/usr/bin/env bash

unclutter -idle 20 -jitter 2 -root &
setxkbmap -option 'caps:ctrl_modifier'
xcape

export GEM_HOME="$HOME/.local/share/gems"
export PATH="$PATH:$HOME/.local/share/gems/bin"
export BROWSER="google-chrome"
export TERMINAL="termite"
export EDITOR="nvim"
export ANDROID_HOME=/opt/android-sdk/platforms/android-29/
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ANDROID_HOME_ROOT=$ANDROID_HOME
