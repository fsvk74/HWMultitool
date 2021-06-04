clear
echo "Welcome to FI Unlock Program!"
echo "If you have Xioami, or other device, that supporting unlock through"
echo "fastboot, you need to press enter to unlock phone. Samsung users - see"
echo "guide on XDA or 4PDA, samsung devices doesn't support fastboot!"
echo "WARNING! YOU CAN GET UNLOCK CODE ONLY THROUGH DC UNLOCKER OR HCU CLIENT!"
echo "If you want to exit - Press 'Ctrl +C'."
echo "Enter BootLoader Unlock Code (Last code will be backuped in ../EMUI/Backups/Code.txt"
read -t 30 HWCODE
echo $HWCODE > EMUI/Backups/LastCode.txt
	adb reboot bootloader
	fastboot oem unlock $HWCODE
	fastboot reboot
