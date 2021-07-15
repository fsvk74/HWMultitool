#!/bin/bash

clear
echo "Welcome to HUAWEI/Android Console MultiTool!"
echo "Version: 0.1.2 Stable, developer: TeamMT (alpinealps, old nickname: fsvk74)"
echo "LICENSE - MIT (For ALL Scripts in THIS MultiTool)"
echo "If yo want to donate me (RUS) please, contact me on 4PDA ^^"
echo "Last IMEI, Last full information from build.prop and Last Unlock Code will be saved in EMUI/Backups"
PS3='Please enter your choice (Press Enter, if you don`t see menu): '
options=("Get info about phone" "FI Flash Program" "FI Unlock Program" "Deleter" "PowerGenue" "EMUI Tweaker" "Samsung Flash Program" "Setup Program" "Exit")
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
	    adb shell service call iphonesubinfo 1 > EMUI/Backups/LastIMEI.txt
	    echo "Getting IMEI..."
	    adb shell service call iphonesubinfo 1
            ;;
	"FI Flash Program")
	    bash EMUI/Flasher.sh
	    ;;
	"FI Unlock Program")
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
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
