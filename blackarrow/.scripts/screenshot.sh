#!/usr/bin/env sh

###############
# Preparation #
###############
mkdir "$(xdg-user-dir PICTURES)"/ScreenShots/
mkdir "$(xdg-user-dir PICTURES)"/.OldScreenShots/

#########################################
# Selecting a quick/advanced screenshot #
#########################################
	case "$(printf " Quick\n Quick+copy\n Advanced\n Cancel" | dmenu -i -p 'What screenshot you want to do:')" in

		" Quick") sleep 0.5 && maim -u "$(xdg-user-dir PICTURES)"/ScreenShots/"$(date +%G-%m-%d\ %H:%M:%S.png)"
		           notify-send -i "$(find "$(xdg-user-dir PICTURES)"/ScreenShots/* | sed '$!d')" "ScreenShot saved."
		           exit 0;;

		" Quick+copy") sleep 0.5 && maim -u "$(xdg-user-dir PICTURES)"/ScreenShots/"$(date +%G-%m-%d\ %H:%M:%S.png)"
		                xclip -selection clipboard -t image/png "$(find "$(xdg-user-dir PICTURES)"/ScreenShots/* | sed '$!d')"
		                notify-send -i "$(find "$(xdg-user-dir PICTURES)"/ScreenShots/* | sed '$!d')" "ScreenShot copied and saved."
		                exit 0;;
		" Advanced")
			#~~~~~~~~~~~~~~~#
			# dmenu prompts #
			#~~~~~~~~~~~~~~~#
			TYPE="$(printf " Screen\n Window" | dmenu -i -p 'What do you want to screenshot?')"
			COPY="$(printf " Yes\n No"        | dmenu -i -p 'Do you want to copy to clipboard?')"
			TIME="$(printf "0.5\n5\n10\n15"     | dmenu -i -p 'How many seconds you want to wait?')"

			#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
			# Set flag if selected "Window" #
			#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
			case "$TYPE" in
				" Window") FLAG="-s -u";;
				*)          FLAG="-u"
			esac

			#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
			# Save and copy to clipboard or save to file #
			#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
			case "$COPY" in
				" Yes") sleep "$TIME" && maim $FLAG "$(xdg-user-dir PICTURES)"/ScreenShots/"$(date +%G-%m-%d\ %H:%M:%S.png)" && sleep 0.2
				         xclip -selection clipboard -t image/png "$(find "$(xdg-user-dir PICTURES)"/ScreenShots/* | sed '$!d')"
				         notify-send -i "$(find "$(xdg-user-dir PICTURES)"/ScreenShots/* | sed '$!d')" "ScreenShot copied and saved."
				         exit 0;;
				*)       sleep "$TIME" && maim $FLAG "$(xdg-user-dir PICTURES)"/ScreenShots/"$(date +%G-%m-%d\ %H:%M:%S.png)"
				         notify-send -i "$(find "$(xdg-user-dir PICTURES)"/ScreenShots/* | sed '$!d')" "ScreenShot saved."
				         exit 0
			esac;;

		clear)
			mkdir "$(xdg-user-dir PICTURES)"/.OldScreenShots/"$(date +%G-%m-%d\ %H:%M:%S)"
			mv "$(xdg-user-dir PICTURES)"/ScreenShots/* "$(find "$(xdg-user-dir PICTURES)"/.OldScreenShots/* -maxdepth 1 | sed '$!d')"
			notify-send "SSs moved to ~/[Pictures]/.OldScreenShots" && exit 0;;

		*) exit 0
	esac
