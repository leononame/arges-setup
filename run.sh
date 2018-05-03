#!/bin/bash

# Post install: restore data and config backups, install packages
echo -e "\n\n########## Post installation script"
#sudo ./post-install.sh

# Install AUR packages as local user rather than root
echo -e "\n\n########## Install AUR packages"
#aurman --needed --noconfirm -S raccoon gnucash-git spotify jetbrains-toolbox steam steam-native-runtime

# Install ui stuff
echo -e "\n\n########## UI"
#./ui.sh

# Settings
echo -e "\n\n########## Settings"
sudo ./settings.sh
