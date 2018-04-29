#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
fi

# Set variables
localuser=leo
backupfolder=/run/media/leo/briareos/zeus/data.0/b.0/$localuser
homefolder=/home/$localuser
HOME=$homefolder
BACKUP=$backupfolder

# Set commands
inst='pacman --needed --noconfirm -S'
copy='rsync -ahAXHS'

# Install stuff that's needed before doing anything
echo "Installing rsync"
$inst rsync

#source backup/data.sh
#source backup/config.sh

source packages/install.sh
