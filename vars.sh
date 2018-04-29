#!/bin/bash

# Set variables
localuser=leo
backupfolder=/run/media/leo/briareos/zeus/data.0/b.0/$localuser
homefolder=/home/$localuser
HOME=$homefolder
BACKUP=$backupfolder

# Set commands
inst='pacman --needed --noconfirm -S'
copy='rsync -ahAXHS'
