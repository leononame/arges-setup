#!/bin/bash

# Install pacman packages
echo "Official packages"
sudo -E $inst - < packages/pkglist >>$log

# Install aurman
echo "aurman"
packages/aurman.sh >>$log

# Install zprezto
echo "zprezto"
/usr/bin/zsh packages/zprezto.sh >>$log

# AUR packages
echo "AUR"
$aurinst - < packages/aurlist >>$log
