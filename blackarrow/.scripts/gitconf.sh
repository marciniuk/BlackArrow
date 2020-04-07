#!/sur/bin/env bash

Data=$(date +%G-%m-%d\ %H:%M:%S)

################################################
# Symulowanie obrazowania wykonywania operacji #
################################################
	sleep 0.2
	echo "
	Copying files:
	"
	sleep 0.2
	echo -ne "	[----------] 0%\r\c"
	sleep 0.2
	echo -ne "	[#---------] 10%\r\c"
	sleep 0.2
	echo -ne "	[##--------] 20%\r\c"
	sleep 0.2
	echo -ne "	[###-------] 30%\r\c"
	sleep 0.2
	echo -ne "	[####------] 40%\r\c"
	sleep 0.2
	echo -ne "	[#####-----] 50%\r\c"
	sleep 0.2
	echo -ne "	[######----] 60%\r\c"
	sleep 0.2
	echo -ne "	[#######---] 70%\r\c"
	sleep 0.2
	echo -ne "	[########--] 80%\r\c"
	sleep 0.2
	echo -ne "	[#########-] 90%\r\c"


################################################################################
# Tworzenie folderu z aktualną datą + przenoszenie + tworzenie nowych folderów #
################################################################################
	mkdir ~/.BlackArrowGit/Kopia\ "$Data" && mv -n ~/BlackArrowGit/blackarrow ~/.BlackArrowGit/Kopia\ "$Data"
	mkdir -p ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/dmenu ~/BlackArrowGit/blackarrow/.config/
	sudo rm -r ~/blackarrow/.config/dmenu/.git &> /dev/null


############################
# Kopiowanie nowych plików #
############################
	#kopiowanie
		##configi
	cp -r ~/.config/qt5ct ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/dunst ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/gsimplecal ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/i3/ ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/polybar/ ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/termite/ ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/rofi/ ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/ranger/ ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/neofetch ~/BlackArrowGit/blackarrow/.config/
	cp -r ~/.config/gtk-3.0 ~/BlackArrowGit/blackarrow/.config/
	cp -r /usr/lib/sddm ~/BlackArrowGit/blackarrow/
	cp -r /usr/share/sddm/themes/chili/ ~/BlackArrowGit/blackarrow/
	cp ~/.config/compton.conf ~/BlackArrowGit/blackarrow/.config/
	cp /etc/X11/xorg.conf.d/30-touchpad.conf ~/BlackArrowGit/blackarrow/
	cp /etc/systemd/logind.conf ~/BlackArrowGit/blackarrow/
		##personalizacja
	cp -r ~/.themes ~/BlackArrowGit/blackarrow/
	cp -r /usr/share/backgrounds ~/BlackArrowGit/blackarrow/
	cp -r ~/.local/share/fonts/ ~/BlackArrowGit/blackarrow/
	cp ~/.gtkrc-2.0 ~/BlackArrowGit/blackarrow/
		##pliki
	cp -r ~/.scripts ~/BlackArrowGit/blackarrow/
	cp ~/.Xresources ~/BlackArrowGit/blackarrow/
	cp ~/.zshrc ~/BlackArrowGit/blackarrow/
	cp ~/.profile ~/BlackArrowGit/blackarrow/
	cp ~/.xprofile ~/BlackArrowGit/blackarrow/
	cp ~/.licencja/New/LICENSE ~/BlackArrowGit/
	cp ~/Pliki/Projekty/bafull/README.md ~/BlackArrowGit/
		#nvim
	cp -r ~/.config/nvim/ ~/BlackArrowGit/blackarrow/.config/
	sudo rm -r ~/BlackArrowGit/blackarrow/.config/nvim/bundle
	cp -r ~/.config/nvim/bundle/lightline-biual ~/BlackArrowGit/blackarrow/.config/
		#usuwanie niepotrzebnych plików
	rm -r ~/BlackArrowGit/blackarrow/.scripts/test
	rm ~/BlackArrowGit/blackarrow/.scripts/BA-Installer.sh


##################################################
# Symulowanie obrazowania wykonywania operacji 2 #
##################################################
	echo -ne "	[##########] 100%\r\c"
	echo -ne "\n"
	sleep 0.2

	echo "
	Completed, My King!
	"
	sleep 0.1
