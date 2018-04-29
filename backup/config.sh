#!/bin/bash

echo -e "\n\n"
echo "########## Restore Config"


# Git
echo "git"
rm ~/.gitconfig
$copy $BACKUP/.gitconfig ~

# SSH
echo "ssh"
rm -rf ~/.ssh
$copy $BACKUP/.ssh ~

# Firefox
echo "firefox"
rm -rf ~/.mozilla/
$copy $BACKUP/.mozilla ~

# Keepass
echo "keepass"
rm -rf ~/.config/keepassxc ~/.config/keepassxcrc
$copy $BACKUP/.config/keepassxc ~/.config
$copy $BACKUP/.config/keepassxcrc ~/.config

# Darktable
echo "darktable"
rm -rf ~/.config/darktable
$copy $BACKUP/.config/darktable ~/.config

# Spotify
echo "spotify"
rm -rf ~/.config/spotify
$copy $BACKUP/.config/spotify ~/.config

# Calibre
echo "calibre"
rm -rf ~/.config/calibre
$copy $BACKUP/.config/calibre ~/.config

# Raccoon
echo "raccoon"
rm -rf ~/.Raccoon
$copy $BACKUP/.Raccoon ~
