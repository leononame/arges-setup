#!/bin/bash

# Post install: restore data and config backups, install packages
echo "########## Post installation script"
sudo ./post-install.sh

# Install AUR packages as local user rather than root
echo "########## Install AUR packages"
aurman --needed --noconfirm -S raccoon gnucash-git spotify jetbrains-toolbox steam steam-native-runtime


