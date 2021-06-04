select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put show_network_speed_enabled 1 && exit; break;;
		No ) adb shell settings system put show_network_speed_enabled 0 && exit;;
	esac
done