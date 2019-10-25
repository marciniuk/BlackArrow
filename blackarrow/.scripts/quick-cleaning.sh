#!/usr/bin/env sh

case "$(printf "~/.yay-log\n~/.BA" | dmenu -h 33 -i -p 'Are you cleaning:')" in
	"~/.yay-log") find .yay-log/* -mtime +30 -print -delete &&
	              find .yay-log/seen/* -mtime +30 -print -delete;;
	"~/.BA")      #Configs
	                  mkdir ~/.BA/configi/$(date +%G-%m)
					  echo "Moving folders:"
					  find ~/.BlackArrowGit/* -print
					  mv ~/.BlackArrowGit/Kopia\ $(date +%G-%m)* ~/.BA/configi/$(date +%G-%m)
					  echo "Delete old files in ~/.BA/configi"
					  find ~/.BA/configi -mtime +90 -print -delete 
					  echo "Delete empty directories in ~/.BA/configi"
					  find ~/.BA/configi -type d -empty -print -delete
esac
