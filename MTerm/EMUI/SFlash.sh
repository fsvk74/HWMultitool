#!/bin/bash

clear
echo "Please, select partition: "
PS3='Please enter your choice: '
options=("Kernel" "System" "Userdata" "Vendor" "Param" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Kernel")
		echo "Welcome to SFlash!"
			echo "Please, put your boot.img in EMUI/Files/Kernel/boot.img"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) heimdall flash --kernel EMUI/Files/Kernel/boot.img; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
            ;;
	"System")
		echo "Welcome to SFlash!"
			echo "Please, put your system.img in EMUI/Files/System/system.img"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) heimdall flash --system EMUI/Files/System/system.img; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
	    ;;
	"Recovery")
		echo "Welcome to SFlash!"
			echo "Please, put your recovery.img in EMUI/Files/Recovery/recovery.img"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) heimdall flash --recovery EMUI/Files/Recovery/recovery.img; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
	    ;;
	"Userdata")
		echo "Welcome to SFlash!"
			echo "Please, put your userdata.img in EMUI/Files/Userdata/userdata.img"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) heimdall flash --userdata EMUI/Files/Userdata/userdata.img; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
	    ;;
	"Vendor")
		echo "Welcome to SFlash!"
			echo "Please, put your vendor.img in EMUI/Files/Vendor/vendor.img"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) heimdall flash --vendor EMUI/Files/Vendor/vendor.img; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
	    ;;
	"Param")
		echo "Welcome to SFlash!"
			echo "Please, put your param.lfs in EMUI/Files/Param/param.lfs"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) heimdall flash --param EMUI/Files/Param/param.lfs; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
	    ;;
	"Exit")
            break
            ;;
        *) echo "Incorect Variant! ($REPLY)";;
    esac
done
