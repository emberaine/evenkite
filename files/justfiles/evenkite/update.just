# Update everything on Evenkite all at once
update:
	#!/bin/bash
	while true; do
		echo -ne "\033]0;Evenkite Updater\007"
		echo -e ""
		echo -e ".-*   Evenkite Updater   *-."
		echo -e ""
		echo -e "\033[2;37mAre you sure you want to upgrade everything on your system?"
		echo -e "This will fetch all available system/flatpak/brew/ect updates, and then apply them.\033[0m"
		echo -e ""
		echo -e "\033[3;33mNOTE: SYSTEM UPDATES REQUIRE A RESTART TO TAKE EFFECT! \033[0m"
		echo -e ""
		echo -e "\033[1m( Y: Yes, update!   Q: Quit )\033[0m"
		read -p ": " yn
		case $yn in
			[Yy]* ) break;;
			[Qq]* ) exit;;
			* ) echo -e "\033[1;31mPlease enter a valid option.\033[0m";;
	   	esac
	done
	topgrade
	while true; do
		echo -ne "\033]0;Evenkite Updater\007"
		echo -e ""
		echo -e "\033[2;37mAll updates have ran and completed.
	Please see the Topgrade summary up above to see if anything went wrong.
	You may want to restart your system to apply any system updates.\033[0m"
		echo -e ""
		echo -e "\033[1m( R: Restart   S: Shutdown   Q: Quit )\033[0m"
		read -p ": " yn
		case $yn in
			[Rr]* ) systemctl reboot;;
			[Ss]* ) systemctl poweroff;;
			[Qq]* ) exit;;
			* ) echo -e "\033[1;31mPlease enter a valid option.\033[0m";;
		esac
	done