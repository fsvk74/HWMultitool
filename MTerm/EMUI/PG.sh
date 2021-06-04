echo "PowerGenue Options:"
                                select yn in "Disable" "Enable" "Exit"; do
                                     case $yn in
                                        Disable ) adb shell pm uninstall --user 0 com.huawei.powergenie; break;;
					Enable ) adb shell cmd package install-existing com.huawei.powergenie; break;;
                                        Exit ) exit && bash Flasher.sh;;
                                     esac
                                done
