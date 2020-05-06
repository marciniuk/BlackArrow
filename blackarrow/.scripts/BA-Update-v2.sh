#!/usr/bin/env bash
#
# ____    _       ____             __ _         _   _           _       _
#| __ )  / \     / ___|___  _ __  / _(_) __ _  | | | |_ __   __| | __ _| |_ ___
#|  _ \ / _ \   | |   / _ \| '_ \| |_| |/ _` | | | | | '_ \ / _` |/ _` | __/ _ \
#| |_) / ___ \  | |__| (_) | | | |  _| | (_| | | |_| | |_) | (_| | (_| | ||  __/
#|____/_/   \_\  \____\___/|_| |_|_| |_|\__, |  \___/| .__/ \__,_|\__,_|\__\___|
#                                       |___/        |_|
#

echo "It doesn't work. I need to fix the script. Use the installer. It will probably work." && exit

##################### @@@@@@@@@@@@@@@@@@@@@@@@
# Color definitions # @ Definiowanie kolorów @
##################### @@@@@@@@@@@@@@@@@@@@@@@@

	if [ -x "$(command -v tput)" ]; then
	# Foreground
		bold="$(tput bold)"
		black="$(tput setaf 0)"
		blue="$(tput setaf 4)"
		reset="$(tput sgr0)"
	# Background
		blue_bg="$(tput setab 4)"
	fi

################ @@@@@@@@@@@@@@@@@@
# Date setting # @ Ustawanie daty @
################ @@@@@@@@@@@@@@@@@@

	Data=$(date +%d-%m-%G\ %H:%M:%S)

######################################################

########### @@@@@@@@@@@@@@@
# Welcome # @ Przywitanie @
########### @@@@@@@@@@@@@@@

	clear
	echo "${black}${blue_bg}${bold} BlackArrow Config Update 1/2 - Welcome in BlackArrow Config Update ${reset}
	"
	echo "${blue}	 ____  _            _        _
	| __ )| | __ _  ___| | __   / \\   _ __ _ __ _____      __
	|  _ \\| |/ _\` |/ __| |/ /  / _ \\ | '__| '__/ _ \\ \\ /\\ / /
	| |_) | | (_| | (__|   <  / ___ \\| |  | | | (_) \\ V  V /
	|____/|_|\\__,_|\\___|_|\\_\\/_/   \\_\\_|  |_|  \\___/ \\_/\\_/
	${reset}"

	echo "	Welcome to the configuration files update installer.
	The old files will be moved to the folder ~/OldC/[current date]
	"

	#FAQ
	read -r -p "Are you sure you want to continue? <y/N> " prompt
	if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
	then
		echo Ok! Get Ready!
	else
		exit 0
		clear
	fi

####################### @@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Checking the update # @ Sprawdzanie aktualizacji @
####################### @@@@@@@@@@@@@@@@@@@@@@@@@@@@

	yes | LC_ALL=en_US.UTF-8 yay

	yes | LC_ALL=en_US.UTF-8 sudo pacman --needed -S wget xclip kirigami2 xorg-xrdb xwallpaper htop lxappearance sddm qt5ct qt5-styleplugins xdotool noto-fonts-cjk sxiv mpv maim light i3-gaps xss-lock noto-fonts-emoji dunst wireless_tools python-pip compton termite thunar pamixer papirus-icon-theme telegram-desktop rofi ttf-dejavu neovim zsh polkit-gnome unclutter xcape pacman-contrib gsimplecal gnome-font-viewer zsh-syntax-highlighting neofetch figlet lolcat xorg-server xdg-user-dirs |& tee -a ~/yay-log\ "$Data".log

	yes | LC_ALL=en_US.UTF-8 yay --needed -S color-picker zsh-syntax-highlighting sxiv-rifle ttf-symbola i3lock google-chrome ttf-dejavu-sans-mono-powerline-git polybar antigen-git |& tee -a ~/yay-log\ "$Data".log

############################################### @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Creating folders and downloading new files  # @ Tworzenie folderów oraz pobieranie nowych plików @
############################################### @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

	if cd ~/ &> /dev/null; then echo ""; else echo "Fail: cd ~/"; fi
		mkdir OldC &> /dev/null
		mkdir OldC/moved\ "$Data"
	mv ~/blackarrow ~/OldC/moved\ "$Data"
	git clone https://gitlab.com/xXBlackMaskXx/blackarrow2
	git submodule update --init --recursive

################ @@@@@@@@@@@@@@@@@@@@@@@
# Moving files # @ Przenoszenie plików @
################ @@@@@@@@@@@@@@@@@@@@@@@

#Old @Stare
	sudo mkdir ~/OldC
		if cd /usr/share/themes/oomox-numix 2> /dev/null; then sudo mv /usr/share/themes/oomox-numix ~/OldC && cd || echo ""; else cd || echo ""; fi
		if sudo mv ~/.themes ~/OldC 2> /dev/null; then echo ""; else echo ".themes is empty"; fi
		if sudo mv ~/.scripts ~/OldC 2> /dev/null; then echo ""; else echo ".scripts is empty"; fi
		if sudo mv ~/.profile ~/OldC 2> /dev/null; then echo ""; else echo ".profile is empty"; fi
		if sudo mv ~/.xprofile ~/OldC 2> /dev/null; then echo ""; else echo ".xprofile is empty"; fi
		if sudo mv ~/.Xresources ~/OldC 2> /dev/null; then echo ""; else echo ".Xresources is empty"; fi
		if sudo mv ~/.termite ~/OldC 2> /dev/null; then echo ""; else echo ".termite is empty"; fi
		if sudo mv ~/.zshrc ~/OldC 2> /dev/null; then echo ""; else echo ".zshrc is empty"; fi
		if sudo mv ~/.antigen ~/OldC 2> /dev/null; then echo ""; else echo ".antigen is empty"; fi
		if sudo mv /usr/lib/sddm ~/OldC 2> /dev/null; then echo ""; else echo "sddm is empty"; fi
		if sudo mv /usr/share/sddm/themes/chili/ ~/OldC 2> /dev/null; then echo ""; else echo "sddm/themes/chili is empty"; fi
			#.config
			if sudo mv ~/.config/qt5ct ~/OldC 2> /dev/null; then echo ""; else echo ".config/qt5ct is empty"; fi
			if sudo mv ~/.config/dunst ~/OldC 2> /dev/null; then echo ""; else echo ".config/dunst is empty"; fi
			if sudo mv ~/.config/dmenu ~/OldC 2> /dev/null; then echo ""; else echo ".config/dmenu is empty"; fi
			if sudo mv ~/.config/gsimplecal/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/gsimplecal/ is empty"; fi
			if sudo mv ~/.config/i3/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/i3/ is empty"; fi
			if sudo mv ~/.config/polybar/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/polybar/ is empty"; fi
			if sudo mv ~/.config/termite/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/termite/ is empty"; fi
			if sudo mv ~/.config/rofi/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/rofi/ is empty"; fi
			if sudo mv ~/.config/ranger/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/ranger/ is empty"; fi
			if sudo mv ~/.config/neofetch/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/neofetch/ is empty"; fi
			if sudo mv ~/.config/gtk-3.0/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/gtk-3.0/ is empty"; fi
			if sudo mv ~/.config/compton.conf ~/OldC 2> /dev/null; then echo ""; else echo ".config/compton.conf is empty"; fi
			if sudo mv ~/.config/nvim/ ~/OldC 2> /dev/null; then echo ""; else echo ".config/nvim/ is empty"; fi
			if sudo mv /etc/systemd/logind.conf ~/OldC 2> /dev/null; then echo ""; else echo "/etc/systemd/logind.conf is empty"; fi
			if sudo mv /etc/X11/xorg.conf.d/30-touchpad.conf ~/OldC 2> /dev/null; then echo ""; else echo "30-touchpad.conf is empty"; fi
			if sudo mv /usr/bin/i3lock-fancy ~/OldC 2> /dev/null; then echo ""; else echo "/usr/bin/i3lock-fancy"; fi
	#Moving @Przenoszenie
	if cd ~/blackarrow2/blackarrow/ 2> /dev/null; then echo ""; else echo "Fail: cd ~/blackarrow/blackarrow/"; fi
		sudo cp .profile ~/
		sudo cp .xprofile ~/
		sudo cp .Xresources ~/
		sudo cp .zshrc ~/
		sudo cp .gtkrc-2.0 ~/
		sudo cp -r ~/blackarrow2/blackarrow/.scripts ~/
		sudo cp -r ~/blackarrow2/blackarrow/.themes ~/
		sudo cp -r ~/blackarrow2/blackarrow/themes/oomox-numix /usr/share/themes
		sudo cp -r ~/blackarrow2/blackarrow/backgrounds /usr/share/
		sudo cp -r ~/blackarrow2/blackarrow/lightdm /etc
		sudo cp -r ~/blackarrow2/blackarrow/fonts/* ~/.local/share/fonts/
			#.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/qt5ct ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/dunst ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/dmenu ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/gsimplecal ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/i3/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/polybar/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/termite/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/rofi/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/ranger/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/neofetch/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/gtk-3.0/ ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/compton.conf ~/.config
			sudo cp -r ~/blackarrow2/blackarrow/.config/nvim ~/.config
			sudo cp ~/blackarrow2/blackarrow/logind.conf/ /etc/systemd/
			sudo cp ~/blackarrow2/blackarrow/30-touchpad.conf/ /etc/X11/xorg.conf.d/
			sudo cp ~/blackarrow2/blackarrow/i3lock-fancy/ /usr/bin/i3lock-fancy/
				sudo mkdir ~/.config/nvim/bundle && cd ~/.config/nvim/bundle && sudo chown -R "$USER" ~/.config
					git clone https://github.com/tpope/vim-commentary
					git clone https://github.com/Shougo/deoplete.nvim
					git clone https://github.com/junegunn/goyo.vim
					git clone https://github.com/PotatoesMaster/i3-vim-syntax
					git clone https://github.com/itchyny/lightline.vim
					git clone https://github.com/rafaqz/ranger.vim
					git clone https://github.com/romainl/vim-cool
					git clone https://github.com/octol/vim-cpp-enhanced-highlight
					git clone https://github.com/ap/vim-css-color
					git clone https://github.com/itchyny/vim-gitbranch
					git clone https://github.com/reedes/vim-pencil
					git clone https://github.com/tpope/vim-speeddating
					git clone https://github.com/bronson/vim-trailing-whitespace
					cp -r ~/blackarrow2/blackarrow/.config/lightline-biual ~/.config/nvim/bundle
	#Granting permissions @Przyznawanie uprawnień
	if cd ~/ &> /dev/null; then echo ""; else echo "Fail: cd ~/"; fi
		sudo chown -R "$USER" ~/OldC
		sudo chown "$USER" ~/.profile
		sudo chown "$USER" ~/.xprofile
		sudo chown "$USER" ~/.Xresources
		sudo chown "$USER" ~/.zshrc
		sudo chown -R "$USER" ~/.scripts
		sudo chown -R "$USER" ~/.themes
		sudo chown "$USER" ~/.gtkrc-2.0
		sudo chown -R "$USER" /usr/share/backgrounds
	clear

########## @@@@@@@@@@@@@@@
# Ending # @ Zakończenie @
########## @@@@@@@@@@@@@@@

		echo "${black}${blue_bg}${bold} BlackArrow Config Update 2/2 - Ending ${reset}
	"

	echo "${bold}
	                      ##
	                     ####
	                    ######
	                   ########
	                  ##########
	                 ############
	                ##############          ____  _            _        _
	               ################        | __ )| | __ _  ___| | __   / \\   _ __ _ __ _____      __
	              ##################       |  _ \\| |/ _\` |/ __| |/ /  / _ \\ | '__| '__/ _ \\ \\ /\\ / /
	             ####################      | |_) | | (_| | (__|   <  / ___ \\| |  | | | (_) \\ V  V /
	            ######################     |____/|_|\\__,_|\\___|_|\\_\\/_/   \\_\\_|  |_|  \\___/ \\_/\\_/
	           ##########    ##########
	          ##########      ##########
	         ###########      ###########
	        ##########          ##########
	       #######                  #######
	      ####                          ####
	     ###                              ###
	    #                                    #
	${reset}"

	read -r -p "Thanks for using BAUpdate! Have fun using it! <y>" prompt
	if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
	then
		clear
		exit 0
	else
		clear
		exit 0
	fi

	clear && zsh
