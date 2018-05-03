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
#sudo ./settings.sh

# Add input sources
dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'us'), ('xkb', 'de'), ('xkb', 'es')]"
# Date/Time and number format
dconf write /system/locale/region "'es_ES.UTF-8'"

# Extension settings
#Enable extensions
#dconf write /org/gnome/shell/enabled-extensions ''
# Dash to Dock
dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height 'true'
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-shrink 'true'
dconf write /org/gnome/shell/extensions/dash-to-dock/intellihide 'false'

