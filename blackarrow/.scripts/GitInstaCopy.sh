#!/bin/bash

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

	mkdir ~/.BlackArrowOldInstallerGit/Kopia\ "$Data" && mv -n ~/.BlackArrowInstallerGit/Files ~/.BlackArrowOldInstallerGit/Kopia\ "$Data"
	mkdir ~/.BlackArrowInstallerGit/Files

############################
# Kopiowanie nowych plików #
############################

	cp ~/.scripts/BA-Installer.sh ~/.BlackArrowInstallerGit/Files
	cp ~/.scripts/BA-Update.sh ~/.BlackArrowInstallerGit/Files
	cp ~/.licencja/LICENSE ~/.BlackArrowInstallerGit/

#############
# Kończenie #
#############


	echo -ne "	[##########] 100%\r\c"
	echo -ne "\n"
	sleep 0.2

	echo "
	Completed, My King!
	"

	sleep 0.2
