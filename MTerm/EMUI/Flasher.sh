#!/bin/bash

clear
echo "Please, select partition: "
PS3='Please enter your choice: '
options=("Kernel" "System" "Userdata" "Vendor" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Kernel")
		echo "Welcome to FI Flash Program!"
		adb reboot fastboot
			echo "Please, put your boot.img in ~/EMUI/Files/Kernel/boot.img"
				select yn in "Yes" "No"; do
    				     case $yn in
        				Yes ) fastboot flash boot ~/EMUI/Files/Kernel/boot.img; break;;
        				No ) exit && bash Flasher.sh;;
    				     esac
				done
            ;;
   	"System")
		echo "Welcome to FI Flash Program!"
                adb reboot fastboot
                        echo "Please, put your system.img in ~/EMUI/Files/System/system.img"
                                select yn in "Yes" "No"; do
                                     case $yn in
                                        Yes ) fastboot erase system && fastboot flash system ~/EMUI/Files/System/system.img; break;;
                                        No ) exit && ./Flsaher.sh;;
                                     esac
                                done
	    ;;
	"Userdata")
		echo "Welcome to FI Flash Program!"
                adb reboot fastboot
                        echo "Please, put your userdata.img in ~/EMUI/Files/Userdata/userdata.img"
                                select yn in "Yes" "No"; do
                                     case $yn in
                                        Yes ) fastboot erase userdata && fastboot flash userdata ~/EMUI/Files/Userdata/userdata.img; break;;
                                        No ) exit && ./Flasher.sh;;
                                     esac
                                done
            ;;
	"Vendor")
		echo "Welcome to FI Flash Program!"
                adb reboot fastboot
                        echo "Please, put your vendor.img in ~/EMUI/Files/Vendor/vendor.img"
                                select yn in "Yes" "No"; do
                                     case $yn in
                                        Yes ) fastboot erase vendor && fastboot flash vendor ~/EMUI/Files/Vendor/vendor.img; break;;
                                        No ) exit && ./Flasher.sh;;
                                     esac
                                done
            ;;
	"Recovery")
		echo "Welcome to FI Flash Program!"
                adb reboot fastboot
                        echo "Please, put your recovery.img in ~/EMUI/Files/Recovery/recovery.img"
                                select yn in "Yes" "No"; do
                                     case $yn in
                                        Yes ) fastboot erase recovery && fastboot flash recovery ~/EMUI/Files/Kernel/recovery.img; break;;
                                        No ) exit && ./Flasher.sh;;
                                     esac
                                done
            ;;
	"Exit")
            break
            ;;
        *) echo "Incorect Variant! ($REPLY)";;
    esac
done
