#!/bin/bash

## Set your root path here (ex. rootpath=/DATA)
rootpath=/DATA

## Set the user that EVERYTHING will run under here (ex. user=plex)
user=plex



sudo mkdir $rootpath
sudo chown -R $user.$user $rootpath
sudo chmod -R 755 $rootpath
cd $rootpath
mkdir FUSE lazylibrarian nzbGet sonarr deluge lidarr mylar radarr
cd FUSE
mkdir Rclone
cd $rootpath/lazylibrarian
mkdir deluge
cd $rootpath/nzbGet
mkdir Complete NzbDir queue temp Downloads scripts
cd $rootpath/sonarr
mkdir deluge nzbget
cd $rootpath/deluge
mkdir autoadd Completed Downloading Downloads_Inprogress torrent_history
cd $rootpath/lidarr
mkdir nzbget deluge
cd $rootpath/mylar
mkdir nzbget deluge
cd $rootpath/radarr
mkdir nzbget deluge


#Now we create /opt directories (where applications will be housed)
opt=/opt

sudo chown -R $user.$user $opt
sudo chmod -R 755 $opt
cd $opt
mkdir Lidarr Mp4_automator nzbget Mylar Ombi Radarr jackett NzbDrone
