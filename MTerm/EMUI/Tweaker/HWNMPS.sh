select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put hw_networkmode_preference 1 && exit; break;;
		No ) adb shell settings system put hw_networkmode_preference 0 && exit;;
	esac
done