#!/bin/bash

# Data=$(date +%d-%m-%G\ %H:%M:%S)

# commit=${1?Error: No comment}

######################
# Tekst na powitanie #
######################
	sleep 0.2
	echo "
	Uploading files to GitLab:
	"
	sleep 0.2


#####################
# Wrzucanie na gita #
#####################
	if cd ~/.BlackArrowInstallerGit &> /dev/null; then echo ""; else echo "Fail: cd ~/"; fi
	git add .
#	git commit -m "$Data"
#	git commit -m "$commit"
	git commit
#	git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9"
	git push -u origin master


########################
# Tekst na zakończenie #
########################
	sleep 0.2
	echo "
	Uploading completed, My King!
	"
	sleep 0.2
