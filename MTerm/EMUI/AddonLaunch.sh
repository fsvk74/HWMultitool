#!/bin/bash
#REPOSITORIES DISABLED NOW!

clear
PS3='Please enter your choice: '
options=("ApkTool (Need Java)" "ApkRepo" "Help" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "ApkTool (Need Java)")
         java -jar EMUI/Addon/apktool.jar
         echo "Launch this file through terminal manually to use it correctly!"
	;;
	"ApkRepo")
		bash Addon/arepo.sh
	;;
	"Help")
		bash Addon/hman.sh
	;;
	"Exit")
            break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done
