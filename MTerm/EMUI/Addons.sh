#!/bin/bash

clear
PS3='Please enter your choice: '
options=("Update List" "Install Addon" "Launch Addon" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Update List")
		echo "Updating..."
		rm -r EMUI/InstallAddon.sh
		rm -r EMUI/AddonLaunch.sh
		git clone https://github.com/fsvk74/hwmaddon0repolist
		mv hwmaddon0repolist/InstallAddon.sh EMUI/InstallAddon.sh
		mv hwmaddon0repolist/AddonLaunch.sh EMUI/AddonLaunch.sh
		chmod +x EMUI/InstallAddon.sh
		chmod +x EMUI/AddonLaunch.sh
		rm -rf hwmaddon0repolist
	;;
	"Install Addon")
		clear
		bash EMUI/InstallAddon.sh
	;;
	"Launch Addon")
		clear
		bash EMUI/AddonLaunch.sh
	;;
	"Delete Addon")
	clear
	bash EMUI/DeleteAddon.sh
	;;
	"Exit")
            break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done
