#!/bin/bash

clear
echo "Welcome to EMUI Tweaker!"
PS3='Please enter your choice: '
options=("Virtual Keys Button" "Min Navigaton Bar" "Show Network Speed Enabler" "HW Network Mode GStyle" "HW Hide Font Style" "App Name Two Lines" "Theme No Online" "HW Launcher Hide Apps" "HW Networking Mode Preference" "HW add 4G only" "HW Support Theme HWID" "Show Network Type" "UserRotation" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "VirtualKeysButtton")
	bash Tweaker/VKBS.sh
	;;
	"Min Navigaton Bar")
	bash Tweaker/MNBS.sh
	;;
	"Show Network Speed Enabler")
	bash Tweaker/SNSE.sh
	;;
	"HW Network Mode GStyle")
	bash Tweaker/HWNMGSS.sh
	;;
	"HW Hide Font Style")
	bash Tweaker/HWHFSS.sh
	;;
	"App Name Two Lines")
	bash Tweaker/ANTLS.sh
	;;
	"Theme No Online")
	bash Tweaker/TNOS.sh
	;;
	"HW Launcher Hide Apps")
	bash Tweaker/HWLHAS.sh
	;;
	"HW Networking Mode Preference")
	bash Tweaker/HWNMPS.sh
	;;
	"HW add 4G only")
	bash Tweaker/HWA4GOS.sh
	;;
	"HW Support Theme HWID")
	bash Tweaker/HWSTHWIDS.sh
	;;
	"Show Network Type")
	bash Tweaker/SNTS.sh
	;;
	"UserRotation")
	bash Tweaker/URS.sh
	;;
	"Exit")
	break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done