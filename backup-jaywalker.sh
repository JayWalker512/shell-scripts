#!/bin/bash

writeLog()
{
	echo "$(date): $1" >> $logFile
}

logFile="/home/jaywalker/Scripts/log/jaywalker-backup.log"
excludeFilePath="/home/jaywalker/Scripts/jaywalker-mirror-exclude"
jaywalkerMirrorPath="/media/External_2TB/jaywalker-backup-mirror"
jaywalkerHomePath="/home/jaywalker"
raidPath="/media/500G-Raid"
externalRootPath="/media/External_2TB"

#first, mount the External 2TB if it isn't mounted
if [ ! -d "$externalRootPath" ]; then
	writeLog "$(/usr/bin/udisks --mount /dev/disk/by-uuid/bc1ce816-e9c0-4a73-8cd1-506c8ee17ff1)"
	if [ 1 == $? ]; then
		writeLog "Couldn't mount external backup drive!"
		exit 1
	fi
fi

#mirror desired directories
#mirror jaywalkers home
writeLog "Started backup..."
rsync -vap --progress --delete --exclude-from=$excludeFilePath $jaywalkerHomePath/ $jaywalkerMirrorPath/jaywalker/ >> $logFile

#mirror RAID
rsync -vap --progress --delete --exclude-from=$excludeFilePath $raidPath/ $jaywalkerMirrorPath/500G-Raid/ >> $logFile
writeLog "Finished backup!"
