#!/bin/bash
#REPOSITORIES DISABLED NOW!

clear
PS3='Please enter your choice: '
options=("ApkTool (Need Java)" "ApkRepo" "Help" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "ApkTool (Need Java)")
		git clone https://github.com/fsvk74/apktoolmirror
		mv apktoolmirror/apktool_2.5.0.jar apktool.jar
		mv apktool.jar Addon/apktool.jar
		rm -rf apktoolmirror
	;;
	"ApkRepo")
		git clone https://github.com/fsvk74/apkrepomirror
		mv apkrepomirror/arepo.sh arepo.sh
		mv arepo.sh Addon/arepo.sh
		rm -rf apkrepomirror
	;;
	"Help")
		git clone https://github.com/fsvk74/helpman
		mv helpman/hman.sh hman.sh
		mv hman.sh Addon/hman.sh
		rm -rf helpman
	;;
	"Exit")
            break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done


