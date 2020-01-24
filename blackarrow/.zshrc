#           _
#   _______| |__
#  |_  / __| '_ \ 
#   / /\__ \ | | |
#  /___|___/_| |_|
#

###########
# Antigen #
###########
	source /usr/share/zsh/share/antigen.zsh
	antigen use oh-my-zsh

#####################
# Less pager colors #
#####################
	export LESS_TERMCAP_mb=$(tput setaf 4)
	export LESS_TERMCAP_md=$(tput setaf 4)
	export LESS_TERMCAP_me=$(tput sgr0)
	export LESS_TERMCAP_se=$(tput sgr0)
	export LESS_TERMCAP_so=$(tput bold && tput setab 8 && tput setaf 1)
	export LESS_TERMCAP_ue=$(tput sgr0)
	export LESS_TERMCAP_us=$(tput setaf 2)

###############
# Sudo prompt #
###############
	export SUDO_PROMPT="$(tput setaf 1) sudo $(tput setab 1)$(tput setaf 0)$(echo "\uE0B0")$(tput setab 1)$(tput setaf 0) password for %p $(tput sgr0)$(tput setaf 1)$(echo "\uE0B0")$(tput sgr0) "

###########
# Bundles #
###########
	antigen bundle git
	antigen bundle heroku
	antigen bundle lein
	antigen bundle command-not-found
	antigen bundle vi-mode
	antigen bundle zsh-users/zsh-syntax-highlighting

##############
# Load theme #
##############
	antigen theme agnoster

#################################
# Tell Antigen that you're done #
#################################
	antigen apply

############
# Vim mode #
############
	bindkey -v

###########
# Aliases #
###########
	# GZG #
		alias gzg='ssh grandzonegaming@51.91.127.178'
		alias gzggnome='gnome-terminal -- ssh grandzonegaming@51.91.127.178'
		alias gzgpass='gpg --decrypt ~/.password/password'
		alias gzgserwer='cd ~/grandzonegaming && bundle exec jekyll serve --livereload --incremental'
		alias gzgbuild='bundle exec jekyll build'

	# Vim #
		alias vi="nvim"
		alias vim="nvim"
		alias nvi="nvim"

	# Grive #
		alias dysk='cd ~/Pliki/grive && grive && cd -'

	# Update #
		alias update='yay -Syu |& tee -a ~/.yay-log/seen/"$(date +%Y-%m-%d\ %H:%M:%S)".log && xdotool key "super+bracketright"'

	# NoName #
		alias czyść='./.scripts/fast-cleaning.sh'
		alias sudo='sudo '
		alias random='./.scripts/random.out'
		alias woman='man'

	# Youtube-dl #
		alias yt-dl='youtube-dl'
		alias yt-video='youtube-dl -f bestvideo -o "%(title)s.%(ext)s"'
		alias yt-webm='youtube-dl -f webm -o "%(title)s.%(ext)s"'
		alias yt-audio='youtube-dl -f bestaudio -o "%(title)s.%(ext)s"'
		alias yt-opus='youtube-dl -x --audio-format opus -o "%(title)s.%(ext)s"'
		alias yt-vorbis='youtube-dl -x --audio-format vorbis -o "%(title)s.%(ext)s"'
		alias yt-thumbnail='youtube-dl --write-thumbnail --skip-download -o "%(title)s.%(ext)s"'

	# Git configs #
		alias ccg='bash ~/.scripts/gitconf.sh'
		alias cpg='bash ~/.scripts/gitpush.sh'
		alias gfc='bash ~/.scripts/gitconf.sh && echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" && bash ~/.scripts/gitpush.sh'

	# Git installer #
		alias ipg='bash ~/.scripts/GitInstaPush.sh'
		alias icg='bash ~/.scripts/GitInstaCopy.sh'
		alias gfi='bash ~/.scripts/GitInstaCopy.sh && echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" && bash ~/.scripts/GitInstaPush.sh'

	# Git #
		alias gf='gfc && echo "#######################################################################" && gfi'
		alias gb='git add . && git commit && git push'

	# Pliki #
		alias bai='nvim ~/.scripts/BA-Installer.sh'
		alias 2048='~/.2048/./2048'
		alias game='greed'

	# Yay log #
		## yay log folder
		alias ylf='cd ~/.yay-log'
		## yay log last
		alias yll='ls -dtr1 ~/.yay-log/* | tail -1'
		## yay log open last
		alias ylol='vi "$(ls -dtr1 ~/.yay-log/* | tail -1)"'

	# Biual #
		alias biual='cd ~/ && git clone https://gitlab.com/dawidpotocki/biual'

	# Pacman #
		alias oldtg='sudo pacman -U /home/adrian/Pliki/Pakiety/telegram-desktop-1.8.4-1-x86_64.pkg.tar.xz'

#########
## ??? ##
#########
	EDITOR=nvim
	TERMINAL=termite
	BROWSER=google-chrome
	neofetch --color_blocks off | lolcat

	prompt_context() {
		if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]
  		then
    		prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
		fi
	}

# ____  _            _        _                                   #
#| __ )| | __ _  ___| | __   / \   _ __ _ __ _____      __       ###
#|  _ \| |/ _` |/ __| |/ /  / _ \ | '__| '__/ _ \ \ /\ / /      #####
#| |_) | | (_| | (__|   <  / ___ \| |  | | | (_) \ V  V /      ### ###
#|____/|_|\__,_|\___|_|\_\/_/   \_\_|  |_|  \___/ \_/\_/      ###   ###
#
