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
$aurinst google-chrome
$aurinst jetbrains-toolbox
$aurinst raccoon
$aurinst spotify
$aurinst sublime-text-dev
# $aurinst steam steam-native-runtime
