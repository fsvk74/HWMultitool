#!/bin/bash

clear
echo "Welcome to EMUI Console MultiTool!"
echo "Version: 0.0.8 Beta"
echo "LICENSE - 3-Clause BSD License (For ALL Scripts in THIS MultiTool)"
echo "IT IS FREE AND OPENSOURCE SOFTWARE!"
echo "Last IMEI, Last full information from build.prop and Last Unlock Code will be saved in EMUI/Backups"
PS3='Please enter your choice (Press Enter, if you don`t see menu): '
options=("Get info about phone" "HUAWEI Flash Program" "HUAWEI Unlock Program" "Deleter" "PowerGenue" "EMUI Tweaker" "Samsung Flash Program" "Setup Program" "Addons" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Get info about phone")
            adb shell getprop | grep -i ro.product.model
	    adb shell getprop | grep -i ro.huawei.build.version.incremental
	    adb shell getprop | grep -i ro.huawei.build.version.security_patch
	    adb shell getprop | grep -i ro.config.cpu_info_display
	    adb shell getprop | grep -i ro.build.version.emui
	    adb shell getprop | grep -i ro.build.product.real.id
	    adb shell getprop | grep -i ro.bootimage.build.date
	    adb shell getprop | grep -i debug.aps.current_battery
	    adb shell service call iphonesubinfo 1 > ~/MTerm/EMUI/Backups/LastIMEI.txt
	    echo "Getting IMEI..."
	    adb shell service call iphonesubinfo 1
            ;;
	"HUAWEI Flash Program")
	    bash EMUI/Flasher.sh
	    ;;
	"HUAWEI Unlock Program")
	    bash EMUI/Unlocker.sh
	    ;;
	"Deleter")
		echo "Now working: Xiaomi, AOSP Programs, Launcher and.., SwiftKey, Google and HUAWEI."
		bash EMUI/Deleter.sh
	    ;;
	"EMUI Tweaker")
		echo "Starting Tweaker program..."
		clear
		bash EMUI/EMUITweaker.sh
	    ;;
	"PowerGenue")
		bash EMUI/PG.sh
	    ;;
	"Samsung Flash Program")
		bash EMUI/SFlash.sh
	    ;;
	"Setup Program")
		clear
		bash EMUI/Setuper.sh
	    ;;
	"Addons")
		clear
		bash EMUI/Addons.sh
	    ;;
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
