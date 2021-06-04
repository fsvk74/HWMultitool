select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put hw_add_4g_only 1 && exit; break;;
		No ) adb shell settings system put hw_add_4g_only 0 && exit;;
	esac
done