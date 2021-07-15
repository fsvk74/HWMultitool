#!/bin/bash

clear
PS3='Please select your package manager: '
options=("Apt" "Emerge" "zypper" "DnF" "Yum" "Pac-Man!" "I use Slackware_" "xbps" "apk" "Exit")
select opt in "${options[@]}"
do
    case $opt in

# Actually, for Debian/Ubuntu, for Alt Linux may not working.
    "Apt")
		echo "Setting up environment..."
		sudo apt install adb fastboot heimdall-flash heimdall-flash-frontend
	;;
	"Emerge")
		echo "Setting up environment..."
		sudo emerge -av adb fastboot heimdall-flash heimdall-flash-frontend
	;;
	"zypper")
		echo "Setting up environment..."
		sudo zypper in adb fastboot heimdall-flash heimdall-flash-frontend
	;;
	"DnF")
		echo "Setting up environment..."
		sudo dnf install adb fastboot heimdall-flash heimdall-flash-frontend
	;;
	"Yum")
		echo "Setting up environment..."
		sudo yum install adb fastboot heimdall-flash heimdall-flash-frontend
	;;
	"Pac-Man!")
		echo "Setting up environment..."
		sudo pacman -Sy adb fastboot heimdall-flash heimdall-flash-frontend
	;;
	"I use Slackware_")
		echo "Setting up environment..."
		su -i
		wget https://packages.slackonly.com/pub/packages/14.2-x86_64/development/android-tools/android-tools-8.0.0_r24-x86_64-3_slonly.txz
		wget https://slackware.uk/people/alien/sbrepos/14.2/x86_64/heimdall/heimdall-1.4.1-x86_64-1alien.tgz
		upgradepkg --install-new android-tools-8.0.0_r24-x86_64-3_slonly.txz heimdall-1.4.1-x86_64-1alien.tgz
		rm -r heimdall-1.4.1-x86_64-1alien.tgz android-tools-8.0.0_r24-x86_64-3_slonly.txz
	;;
	"xbps")
		echo "Setting up environment..."
		sudo xbps-install -S android-tools heimdall
	;;
	# Может не работать, т.к могут быть неправильные имена пакетов.
    #"AltLinux")
	#	echo "Setting up environment..."
	#	sudo apt-get install adb fastboot heimdall-flash heimdall-flash-frontend
	#;;
	"apk")
		echo "Setting up environment..."
		echo "Turn on Edge/Testing repo!!!"
		sudo apk add heimdall android-tools
	;;
	"Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
