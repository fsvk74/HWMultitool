select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put hw_networkmode_gstyle 1 && exit; break;;
		No ) adb shell settings system put hw_networkmode_gstyle 0 && exit;;
	esac
done