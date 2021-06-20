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
	# antigen bundle heroku
	# antigen bundle lein
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
	source ~/.aliases

#########
## ??? ##
#########
	EDITOR=nvim
	TERMINAL=termite
	BROWSER=/usr/bin/google-chrome-stable
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
