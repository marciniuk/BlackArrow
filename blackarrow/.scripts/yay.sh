#!/bin/bash

yay -Syu |& tee -a ~/.yay-log/seen/"$(date +%Y-%m-%d\ %H:%M:%S)".log
