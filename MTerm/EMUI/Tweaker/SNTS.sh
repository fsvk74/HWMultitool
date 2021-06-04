select yn in "Yes" "No"; do
	case $yn in
		Yes ) adb shell settings system put isShowNetworkType 1 && exit; break;;
		No ) adb shell settings system put isShowNetworkType 0 && exit;;
	esac
done