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
# Install extensions
aurman --needed --noconfirm --noedit -S gnome-shell-extension-no-title-bar-git gnome-shell-extension-audio-output-switcher-git gnome-shell-extension-topicons-plus-git gnome-shell-extension-workspace-grid-git gnome-shell-extension-caffeine-git
# Restart gnome-shell

#Enable extensions
#dconf write /org/gnome/shell/enabled-extensions ''

# Settings
# Dash to Dock
dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height 'true'
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-shrink 'true'
dconf write /org/gnome/shell/extensions/dash-to-dock/intellihide 'false'

# No title bar
dconf write /org/gnome/shell/extensions/no-title-bar/button-position "'before-status-area'"
dconf write /org/gnome/shell/extensions/no-title-bar/change-appmenu "false"

# TopIcons
dconf write /org/gnome/shell/extensions/topicons/tray-pos "'right'"
dconf write /org/gnome/shell/extensions/topicons/tray-order "2"

# Workspace grid
dconf write /org/gnome/shell/overrides/dynamic-workspaces "false"
dconf write /org/gnome/shell/extensions/workspace-grid/num-columns "2"
dconf write /org/gnome/shell/extensions/workspace-grid/num-rows "2"
dconf write /org/gnome/shell/extensions/workspace-grid/show-workspace-labels "false"
