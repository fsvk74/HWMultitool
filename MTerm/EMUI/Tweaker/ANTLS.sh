select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put app_name_two_lines 1 && exit; break;;
		No ) adb shell settings system put app_name_two_lines 0 && exit;;
	esac
done