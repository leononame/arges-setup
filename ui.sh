#!/bin/bash

# Source variables
source vars.sh

echo "Installing themes"
# Install themes
sudo $inst community/adapta-gtk-theme community/kvantum-theme-adapta community/adapta-kde >> $log
# From antergos repo
sudo $inst antergos/numix-icon-theme-circle >> $log

echo "Loading QT styles"
# Load QT styles
rm -rf ~/.config/Kvantum ~/.config/qt5ct
$copy $BACKUP/.config/Kvantum ~/.config >> $log
$copy $BACKUP/.config/qt5ct ~/.config >> $log

echo "Installing GNOME extensions"
# Install extensions
$aurinst gnome-shell-extension-no-title-bar-git gnome-shell-extension-audio-output-switcher-git gnome-shell-extension-topicons-plus-git gnome-shell-extension-workspace-grid-git
