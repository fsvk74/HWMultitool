select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put hw_theme_support_hwid 1 && exit; break;;
		No ) adb shell settings system put hw_theme_support_hwid 0 && exit;;
	esac
done