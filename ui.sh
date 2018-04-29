#!/bin/bash

# Source variables
source vars.sh

# Install themes
echo "Installing themes"
sudo $inst community/adapta-gtk-theme community/kvantum-theme-adapta community/adapta-kde

# From antergos repo
sudo $inst antergos/numix-icon-theme-circle

# Set favorites for dash
dconf write /org/gnome/shell/favorite-apps "['firefox.desktop', 'org.gnome.Nautilus.desktop', 'gnucash.desktop', 'spotify.desktop', 'org.gnome.Terminal.desktop', 'darktable.desktop']"
dconf write /org/gnome/desktop/interface/gtk-theme "'Adapta-Eta'"
dconf write /org/gnome/desktop/interface/icon-theme "'Numix-Circle'"
dconf write /org/gnome/shell/extensions/user-theme/name "'Adapta'"
