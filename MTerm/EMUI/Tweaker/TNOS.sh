select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put theme_no_online 1 && exit; break;;
		No ) adb shell settings system put theme_no_online 0 && exit;;
	esac
done