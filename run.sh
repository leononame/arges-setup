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
aurman --needed --noconfirm --noedit -S gnome-shell-extension-no-title-bar-git gnome-shell-extension-audio-output-switcher-git gnome-shell-extension-topicons-plus-git gnome-shell-extension-workspace-grid-git 
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

# Terminal settings
# Hide menubar
dconf write /org/gnome/terminal/legacy/default-show-menubar "false"
# Profiles
dconf write /org/gnome/terminal/legacy/profiles:/default "'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'"
dconf write /org/gnome/terminal/legacy/profiles:/list "['b1dcc9dd-5262-4d8d-a863-c897e6d979b9']"
profile="/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9"
dconf write $profile/audible-bell "false"
dconf write $profile/background-color "'rgb(0,0,0)'"
dconf write $profile/default-size-columns "120"
dconf write $profile/foreground-color "'rgb(78,154,6)'"
dconf write $profile/scrollbar-policy "'never'"
dconf write $profile/use-theme-colors "false"
dconf write $profile/visible-name "'Leo'"
dconf write $profile/palette "['#2E3436', '#CC0000', '#4E9A06', '#C4A000', '#3465A4', '#75507B', '#06989A', '#D3D7CF', '#555753', '#EF2929', '#8AE234', '#FCE94F', '#729FCF', '#AD7FA8', '#34E2E2', '#EEEEEC']"
# Nautilus settings
dconf write /org/gnome/nautilus/list-view/default-column-order "['name', 'size', 'type', 'owner', 'group', 'permissions', 'mime_type', 'where', 'date_modified', 'date_modified_with_time', 'date_accessed', 'recency', 'starred']"
dconf write /org/gnome/nautilus/list-view/default-visible-columns "['name', 'size', 'type', 'owner', 'group', 'permissions', 'date_modified']"
dconf write /org/gnome/nautilus/preferences/default-folder-viewer "'list-view'"
