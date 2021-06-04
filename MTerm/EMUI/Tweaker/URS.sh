select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put user_rotation 1 && exit; break;;
		No ) adb shell settings system put user_rotation 0 && exit;;
	esac
done