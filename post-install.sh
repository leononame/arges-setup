#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
fi

# Rsync
echo "Installing rsync"
pacman --needed --noconfirm -S rsync


### Backup
# Backup location
backupfolder=/run/media/leo/briareos/zeus/data.0/b.0/leo
# echo "########## Backup
# Remove all none hidden folders from home
echo "Removing home folders..."
cd /home/leo
rm -rf -- */

# Restore home folder without dotfiles
echo "Restore from backup"
for i in $backupfolder/*; do
	echo "Restoring $i"
	rsync -ahAXHS --info=progress2 $i ./
done
echo "Backup restore complete"
