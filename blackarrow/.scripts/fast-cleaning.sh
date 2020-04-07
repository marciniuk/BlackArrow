#!/usr/bin/env sh

case "$(printf " ~/.yay-log\n ~/.BA\n All\n Cancel" | dmenu -h 33 -i -p 'Are you cleaning:')" in
	" Cancel") exit 0;;

	" ~/.yay-log")
		echo "	Delete old files in ~/.yay-log:"
		find .yay-log/* -mtime +30 -print -delete
			echo ""
		echo "	Delete old files in ~/.yay-log/seen:"
		find .yay-log/seen/* -mtime +30 -print -delete
			echo "";;

	" ~/.BA")
		#Configs
		if mkdir ~/.BA/configi/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Created folder "'~/.BA/configi/'"$(date +%G-%m)""
				";
			else echo "	The folder "'~/.BA/configi/'"$(date +%G-%m)"" already exists
				"; fi

		if mv ~/.BlackArrowGit/Kopia\ "$(date +%G-%m)"* ~/.BA/configi/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Moved folders to "'~/.BA/configi/'"$(date +%G-%m)""
				";
			else echo "	The "'~/.BlackArrowGit'" folder is empty
				"; fi

		echo "	Delete old files in ~/.BA/configi:"
		if find ~/.BA/configi -mtime +90 -print -delete;
			then echo "";
			else echo "No files to delete"; fi

		echo "	Delete empty directories in ~/.BA/configi:"
		if find ~/.BA/configi -type d -empty -print -delete;
			then echo "";
			else echo "No folders to delete"; fi

    	echo "	~~~~~~~~~~~~~~~~~~~~~~~~~~~
		"

		#Installers
		if mkdir ~/.BA/instalator/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Created folder "'~/.BA/instalator/'"$(date +%G-%m)""
				";
			else echo "	The folder "'~/.BA/instalator/'"$(date +%G-%m)"" already exists
				"; fi

		if mv ~/.BlackArrowOldInstallerGit/Kopia\ "$(date +%G-%m)"* ~/.BA/instalator/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Moved folders to "'~/.BA/instalator/'"$(date +%G-%m)""
				";
			else echo "	The "'~/.BlackArrowOldInstallerGit'" folder is empty
				"; fi

		echo "	Delete old files in ~/.BA/instalator:"
		if find ~/.BA/instalator -mtime +90 -print -delete;
			then echo "";
			else echo "No files to delete"; fi

		echo "	Delete empty directories in ~/.BA/instalator:"
		if find ~/.BA/instalator -type d -empty -print -delete;
			then echo "";
			else echo "No folders to delete"; fi;;

	" All")
		#yay
		echo "	Delete old files in ~/.yay-log:"
		find .yay-log/* -mtime +30 -print -delete
			echo ""
		echo "	Delete old files in ~/.yay-log/seen:"
		find .yay-log/seen/* -mtime +30 -print -delete
			echo ""

    	echo "	~~~~~~~~~~~~~~~~~~~~~~~~~~~
		"

		#configi
		if mkdir ~/.BA/configi/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Created folder "'~/.BA/configi/'"$(date +%G-%m)""
				";
			else echo "	The folder "'~/.BA/configi/'"$(date +%G-%m)"" already exists
				"; fi

		if mv ~/.BlackArrowGit/Kopia\ "$(date +%G-%m)"* ~/.BA/configi/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Moved folders to "'~/.BA/configi/'"$(date +%G-%m)""
				";
			else echo "	The "'~/.BlackArrowGit'" folder is empty
				"; fi

		echo "	Delete old files in ~/.BA/configi:"
		if find ~/.BA/configi -mtime +90 -print -delete;
			then echo "";
			else echo "No files to delete"; fi

		echo "	Delete empty directories in ~/.BA/configi:"
		if find ~/.BA/configi -type d -empty -print -delete;
			then echo "";
			else echo "No folders to delete"; fi

    	echo "	~~~~~~~~~~~~~~~~~~~~~~~~~~~
		"

		#Installers
		if mkdir ~/.BA/instalator/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Created folder "'~/.BA/instalator/'"$(date +%G-%m)""
				";
			else echo "	The folder "'~/.BA/instalator/'"$(date +%G-%m)"" already exists
				"; fi

		if mv ~/.BlackArrowOldInstallerGit/Kopia\ "$(date +%G-%m)"* ~/.BA/instalator/"$(date +%G-%m)" 2>/dev/null;
			then echo "	Moved folders to "'~/.BA/instalator/'"$(date +%G-%m)""
				";
			else echo "	The "'~/.BlackArrowOldInstallerGit'" folder is empty
				"; fi

		echo "	Delete old files in ~/.BA/instalator:"
		if find ~/.BA/instalator -mtime +90 -print -delete;
			then echo "";
			else echo "No files to delete"; fi

		echo "	Delete empty directories in ~/.BA/instalator:"
		if find ~/.BA/instalator -type d -empty -print -delete;
			then echo "";
			else echo "No folders to delete"; fi;;

esac
