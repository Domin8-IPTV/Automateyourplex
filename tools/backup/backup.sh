#!/usr/bin/env bash

#This script backs up all program data file for restorability


## Set Backup Directory here
backupDir=/opt/backup

## Programs we are backing up data for

# Mono keypairs
prgrmtrgt0=/home/plex/.config/.mono/keypairs/

# Sonarr
prgrmtrgt1=/home/plex/.config/NzbDrone/Backups/scheduled/

# Radarr
prgrmtrgt2=/home/plex/.config/Radarr/Backups/scheduled/

# lidarr
prgrmtrgt3=/home/pplex/.config/Lidarr/Backups/scheduled/

# NzbGet
prgrmtrgt4=/opt/nzbget/nzbget.conf

# Deluge
prgrmtrgt5=/home/plex/.config/deluge

# Mylar
prgrmtrgt6=/opt/Mylar/mylar.db
prgrmtrgt6a=/opt/Mylar/config.ini

# Plex
prgrmtrgt7="/var/lib/plexmediaserver/Library/Application Support/Plex Media Server"

# Jackett
prgrmtrgt8=/home/plex/.config/Jackett/ServerConfig.json
progrmtrgt8a=/home/plex/.config/Jackett/Indexers

# Headphones
prgrmtrgt9=/opt/headphones/config.ini
