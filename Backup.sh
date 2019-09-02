## This backs up all programs relevant config files, databases and whatever else

~ /.config

sonarr
https://github.com/Sonarr/Sonarr/wiki/Backup-and-Restore
/home/plex/.config/NzbDrone/Backups/scheduled/

radarr
/home/plex/.config/Radarr/Backups/scheduled/

lidarr
/home/plex/.config/Lidarr/Backups/scheduled/

nzbget
/opt/nzbget/nzbget.conf

deluge
/home/plex/.config/deluge

mylar
/opt/Mylar/mylar.db
/opt/Mylar/config.ini

plex
/var/lib/plexmediaserver/Library/Application Support/Plex Media Server

jackett
/home/plex/.config/Jackett/ServerConfig.json
/home/plex/.config/Jackett/Indexers
NOT SURE IF THIS APPLIES TO US****
You also should backup ~/.config/.mono/keypairs/
Without the keystore it's not possible to decrypt passwords in the config files making them useless.

headphones
/opt/headphones/config.ini
