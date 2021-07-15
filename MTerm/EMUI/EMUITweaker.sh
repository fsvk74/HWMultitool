#!/bin/bash

clear
echo "Welcome to EMUI Tweaker!"
PS3='Please enter your choice: '
options=("Virtual Keys Button" "Min Navigaton Bar" "Show Network Speed Enabler" "HW Network Mode GStyle" "HW Hide Font Style" "App Name Two Lines" "Theme No Online" "HW Launcher Hide Apps" "HW Networking Mode Preference" "HW add 4G only" "HW Support Theme HWID" "Show Network Type" "UserRotation" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Virtual Keys Button")
	bash EMUI/Tweaker/VKBS.sh
	;;
	"Min Navigaton Bar")
	bash EMUI/Tweaker/MNBS.sh
	;;
	"Show Network Speed Enabler")
	bash EMUI/Tweaker/SNSE.sh
	;;
	"HW Network Mode GStyle")
	bash EMUI/Tweaker/HWNMGSS.sh
	;;
	"HW Hide Font Style")
	bash EMUI/Tweaker/HWHFSS.sh
	;;
	"App Name Two Lines")
	bash EMUI/Tweaker/ANTLS.sh
	;;
	"Theme No Online")
	bash EMUI/Tweaker/TNOS.sh
	;;
	"HW Launcher Hide Apps")
	bash EMUI/Tweaker/HWLHAS.sh
	;;
	"HW Networking Mode Preference")
	bash EMUI/Tweaker/HWNMPS.sh
	;;
	"HW add 4G only")
	bash EMUI/weaker/HWA4GOS.sh
	;;
	"HW Support Theme HWID")
	bash EMUI/Tweaker/HWSTHWIDS.sh
	;;
	"Show Network Type")
	bash EMUI/Tweaker/SNTS.sh
	;;
	"UserRotation")
	bash EMUI/Tweaker/URS.sh
	;;
	"Exit")
	break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done
