select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put hide_virtual_key 1 && exit; break;;
		No ) adb shell settings system put hide_virtual_key 0 && exit;;
	esac
done