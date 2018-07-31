#!/bin/bash

# Install pacman packages
echo "Official packages"
sudo pacman -Syyu
sudo -E $inst - < packages/pkglist >>$log

# Install aurman
echo "aurman"
packages/aurman.sh >>$log
# Show message confirmation window
aurman -Syyu

# Install zprezto
echo "zprezto"
/usr/bin/zsh packages/zprezto.sh >>$log

# AUR packages
echo "AUR"
$aurinst angular-cli autofirma git-remote-gcrypt gnucash-git google-chrome jetbrains-toolbox raccoon spotify steam steam-native-runtime sublime-text-dev >>$log
