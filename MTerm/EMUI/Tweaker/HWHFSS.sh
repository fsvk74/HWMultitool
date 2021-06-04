select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put hw_hide_font_style 1 && exit; break;;
		No ) adb shell settings system put hw_hide_font_style 0 && exit;;
	esac
done