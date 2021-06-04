#!/bin/bash

clear
echo "Welcome to HUAWEI Clean Program!"
PS3='Please enter your choice: '
options=("Google" "HUAWEI" "Mi (With Google, Xiaomi ONLY!)" "Samsung" "Microsoft" "SwiftKey (Installing OpenBoard)" "GBoard (Installing OpenBoard)" "AOSP Programs" "Launcher and MediaCenter (HUAWEI Only, installing retro music and lawnchair)" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Google")
		adb shell pm uninstall -k --user 0 com.google.android.marvin.talkback
		adb shell pm uninstall -k --user 0 com.google.android.ims
		adb shell pm uninstall -k --user 0 com.android.chrome
		adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
		adb shell pm uninstall -k --user 0 com.facebook.system
		adb shell pm uninstall -k --user 0 com.facebook.appmanager
		adb shell pm uninstall -k --user 0 com.facebook.services
		adb shell pm uninstall -k --user 0 com.google.android.gm
		adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
		adb shell pm uninstall -k --user 0 com.google.android.music
		adb shell pm uninstall -k --user 0 com.google.android.videos
		adb shell pm uninstall -k --user 0 com.google.android.backuptransport
		adb shell pm uninstall -k --user 0 com.google.android.apps.photos
		adb shell pm uninstall -k --user 0 com.google.android.youtube
		adb shell pm uninstall -k --user 0 com.google.android.apps.docs
		adb shell pm uninstall -k --user 0 com.google.android.apps.maps
		adb shell pm uninstall -k --user 0 com.google.android.partnersetup
		adb shell pm uninstall -k --user 0 com.google.android.feedback
		adb shell pm uninstall -k --user 0 com.google.android.tts
        ;;
	"HUAWEI")
		adb shell pm uninstall -k --user 0 com.huawei.hifolder
		adb shell pm uninstall -k --user 0 com.huawei.appmarket
		adb shell pm uninstall -k --user 0 com.ironsource.appcloud.oobe.huawei
		adb shell pm disable-user --user 0 com.huawei.phoneservice
		adb shell pm disable-user --user 0 com.huawei.hwid
		adb shell pm disable-user --user 0 com.huawei.android.chr
		adb shell pm uninstall -k --user 0 com.huawei.featurelayer.sharedfeature.map
	;;
	"Mi (With Google, Xiaomi ONLY!)")
		adb shell pm uninstall --user 0 com.android.browser
		adb shell pm uninstall --user 0 com.facebook.katana
		adb shell pm uninstall --user 0 com.facebook.appmanager
		adb shell pm uninstall --user 0 com.facebook.services
		adb shell pm uninstall --user 0 com.facebook.system
		adb shell pm uninstall --user 0 com.google.android.apps.docs
		adb shell pm uninstall --user 0 com.google.android.apps.maps
		adb shell pm uninstall --user 0 com.google.android.apps.photos
		adb shell pm uninstall --user 0 com.google.android.apps.tachyon
		adb shell pm uninstall --user 0 com.google.android.backuptransport
		adb shell pm uninstall --user 0 com.google.android.feedback
		adb shell pm uninstall --user 0 com.google.android.gm
		adb shell pm uninstall --user 0 com.google.android.marvin.talkback
		adb shell pm uninstall --user 0 com.google.android.music
		adb shell pm uninstall --user 0 com.google.android.onetimeinitializer
		adb shell pm uninstall --user 0 com.google.android.partnersetup
		adb shell pm uninstall --user 0 com.google.android.printservice.recommendation
		adb shell pm uninstall --user 0 com.google.android.setupwizard
		adb shell pm uninstall --user 0 com.google.android.syncadapters.calendar
		adb shell pm uninstall --user 0 com.google.android.syncadapters.contacts
		adb shell pm uninstall --user 0 com.google.android.videos
		adb shell pm uninstall --user 0 com.google.android.youtube
		adb shell pm uninstall --user 0 com.mi.global.bbs
		adb shell pm uninstall --user 0 com.mi.AutoTest
		adb shell pm uninstall --user 0 com.mi.android.globalpersonalassistant
		adb shell pm uninstall --user 0 com.mi.globalTrendNews
		adb shell pm uninstall --user 0 com.mi.webkit.core
		adb shell pm uninstall --user 0 com.milink.service
		adb shell pm uninstall --user 0 com.mipay.wallet.in
		adb shell pm uninstall --user 0 com.miui.analytics
		adb shell pm uninstall --user 0 com.miui.bugreport
		adb shell pm uninstall --user 0 com.miui.cloudbackup
		adb shell pm uninstall --user 0 com.miui.cloudservice
		adb shell pm uninstall --user 0 com.miui.cloudservice.sysbase
		adb shell pm uninstall --user 0 com.miui.daemon
		adb shell pm uninstall --user 0 com.miui.freeform
		adb shell pm uninstall --user 0 com.miui.hybrid
		adb shell pm uninstall --user 0 com.miui.hybrid.accessory
		adb shell pm uninstall --user 0 com.miui.micloudsync
		adb shell pm uninstall --user 0 com.miui.miwallpaper
		adb shell pm uninstall --user 0 com.miui.msa.global
		adb shell pm uninstall --user 0 com.miui.providers.weather
		adb shell pm uninstall --user 0 com.miui.touchassistant
		adb shell pm uninstall --user 0 com.miui.translation.kingsoft
		adb shell pm uninstall --user 0 com.miui.translation.youdao
		adb shell pm uninstall --user 0 com.miui.translationservice
		adb shell pm uninstall --user 0 com.miui.virtualsim
		adb shell pm uninstall --user 0 com.miui.vsimcore
		adb shell pm uninstall --user 0 com.miui.weather2
		adb shell pm uninstall --user 0 com.miui.yellowpage
		adb shell pm uninstall --user 0 com.miui.enbbs
		adb shell pm uninstall --user 0 com.joom
		adb shell pm uninstall --user 0 com.xiaomi.account
		adb shell pm uninstall --user 0 com.xiaomi.glgm
		adb shell pm uninstall --user 0 com.xiaomi.joyose
		adb shell pm uninstall --user 0 com.xiaomi.location.fused
		adb shell pm uninstall --user 0 com.xiaomi.micloud.sdk
		adb shell pm uninstall --user 0 com.xiaomi.mipicks
		adb shell pm uninstall --user 0 com.xiaomi.mirecycle
		adb shell pm uninstall --user 0 com.xiaomi.payment
		adb shell pm uninstall --user 0 com.xiaomi.powerchecker
		adb shell pm uninstall --user 0 com.xiaomi.simactivate.service
		adb shell pm uninstall --user 0 com.xiaomi.xmsf
		adb shell pm uninstall --user 0 org.simalliance.openmobileapi.service
		adb shell pm uninstall --user 0 com.miui.android.fashiongallery
		adb shell pm uninstall --user 0 com.android.vending
		adb shell pm uninstall --user 0 com.mfashiongallery.emag
	;;
	"Microsoft")
		adb shell pm unistall -k --user 0 com.microsoft.teams
		adb shell pm unistall -k --user 0 com.microsoft.emmx
		adb shell pm unistall -k --user 0 com.microsoft.office.excel
		adb shell pm unistall -k --user 0 com.microsoft.launcher.enterprise
	;;
	"SwiftKey (Installing OpenBoard)")
		adb shell pm uninstall -k --user 0 com.swiftkey.swiftkeyconfigurator
		adb shell pm uninstall -k --user 0 com.touchtype.swiftkey
		adb install Apps/OpenBoard.apk
	;;
	"GBoard (Installing OpenBoard)")
		adb shell pm unintall -k --user 0 com.google.android.inputmethod.latin
		adb install Apps/OpenBoard.apk
	;;
	"AOSP Programs")
		adb shell pm uninstall -k --user 0 com.android.egg
		adb shell pm disable-user --user 0 com.android.stk
		adb shell pm uninstall -k --user 0 com.android.printspooler
		adb shell pm uninstall -k --user 0 com.android.apps.tag
	;;
	"Launcher and MediaCenter (HUAWEI Only, installing retro music and lawnchair)")
		adb shell pm disable-user --user 0 com.android.mediacenter
		adb shell pm disable-user --user 0 com.huawei.android.launcher
		adb install Apps/Lawnchair.apk
		adb install Apps/Retro.apk
	;;
	"Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
