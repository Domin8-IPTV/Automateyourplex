#!/bin/bash

## Set your root download path here (ex. rootpath=/DATA)
rootpath=/DATA

## Set the user that EVERYTHING will run under here (ex. user=plex)
user=plex

## Set the location you want the applications to be installed in, I recommend
## /opt... (ex. app_Dir=/opt)
app_Dir=/opt

## Set the temporary Download location here (ex. /home/$user/Downloads)
dl_Dir=/home/$user/Downloads


##############################  End Of Section ################################
## This section installs depencdencies for all applications
## Completed application dependency list as follows;
## Mylar, Radarr
sudo apt-get update
sudo apt-get install python python-cherrypy git libmono-cil-dev curl mediainfo -y




##############################  End Of Section ################################


## This section establishes the locations needed for the applications
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


## Now we create application directories
sudo chown -R $user.$user $app_Dir
sudo chmod -R 755 $app_Dir
cd $app_Dir
mkdir Lidarr mp4_automator nzbget Mylar Ombi Radarr jackett NzbDrone

##############################  End Of Section ################################


## Now we need to install the applications

# Download and install Rclone
# https://rclone.org/install/
cd $dl_Dir
wget https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64
sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb
#rclone config

# Download and install lazylibrarian
# https://github.com/lazylibrarian/LazyLibrarian
cd $dl_Dir
rm -rf rclone*
git clone https://github.com/lazylibrarian/LazyLibrarian.git /$app_Dir/lazylibrarian/


# Download and install nzbGet
# https://nzbget.net/
wget https://nzbget.net/download/nzbget-latest-bin-linux.run
sh nzbget-latest-bin-linux.run --destdir /$app_Dir/nzbGet


# Download and install sonarr
# https://github.com/Sonarr/Sonarr/wiki
cd $dl_Dir
rm -rf nzb*
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xA236C58F409091A18ACA53CBEBFF6B99D9B78493
echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install nzbdrone -y


# Download and install deluge
# https://dev.deluge-torrent.org
sudo add-apt-repository ppa:deluge-team/stable
sudo apt-get update
sudo apt-get install deluged deluge-web deluge-console -y


# Download and install lidarr
# https://github.com/Lidarr/Lidarr/wiki/Installation
wget https://github.com/lidarr/Lidarr/releases/download/v0.6.2.883/Lidarr.develop.0.6.2.883.linux.tar.gz
tar -xzvf Lidarr.develop.0.6.2.883.linux.tar.gz -C $app_Dir/


# Download and install Mylar
# https://github.com/evilhero/mylar
cd $dl_Dir
rm -rf Lidarr*
git clone https://github.com/evilhero/mylar -b development /opt/Mylar


# Download and install Radarr
# https://github.com/Radarr/Radarr
wget https://github.com/Radarr/Radarr/releases/download/v0.2.0.299/Radarr.develop.0.2.0.299.linux.tar.gz
tar -xzvf Radarr.develop.0.2.0.299.linux.tar.gz -C /opt/


# Download and install sickbeard_mp4_automator
# https://github.com/mdhiggins/sickbeard_mp4_automator
cd $dl_Dir
rm -rf Radarr*
git clone https://github.com/mdhiggins/sickbeard_mp4_automator.git /opt/mp4_automator

# Download and install mergerfs
sudo apt-get install mergerfs -y

##############################  End Of Section ################################
