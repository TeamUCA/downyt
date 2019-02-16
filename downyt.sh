#!/bin/bash
clear
#colors
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
sleep 1
echo  "$green                 ________________________________________"
sleep 1
echo    $yellow"                 |[              UNDERGROUND           ]|"
sleep 1
echo $yellow     "                |[                CYBER               ]|"
sleep 1
echo $yellow   "                |[                 ARMY               ]|"
echo   $green"                 ________________________________________"
sleep 1
echo " "



if [ -e /data/data/com.termux/files/usr/bin/python2 ]
then
	echo "Python2 install"
else
	apt-get install python2
fi
if [ -d /data/data/com.termux/files/usr/lib/python2.7/site-packages/youtube_dl ]
then
	echo "Youtube-dl exists "
else
	pip2 install youtube-dl
fi
if [ -d $HOME/config ]
then
	rm -rf $HOME/config
fi
mkdir $HOME/config
mkdir $HOME/config/youtube-dl
cd $HOME/config/youtube-dl
if [ -d /data/data/com.termux/files/home/storage/shared/youtube ]
then
	rm -rf /data/data/com.termux/files/home/storage/shared/youtube
fi
mkdir /data/data/com.termux/files/home/storage/shared/youtube
touch config
echo "--no-mtime" >> config
echo "-o /data/data/com.termux/files/home/storage/shared/youtube/%(title)s.%(ext)s" >> config
echo '-f "best[height<=480]"' >> config
if [ -d $HOME/bin ]
then
	rm -rf $HOME/bin
fi
mkdir $HOME/bin
cd $HOME/bin
touch termux-url-opener
echo "cd /sdcard/youtube" >> termux-url-opener
echo 'youtube-dl $1'>> termux-url-opener
