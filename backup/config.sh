#!/bin/bash

echo -e "\n\n"
echo "#### Restore Config"

# Git
echo "git"
rm ~/.gitconfig
$copy $BACKUP/.gitconfig ~ >> $log

# SSH
echo "ssh"
rm -rf ~/.ssh
$copy $BACKUP/.ssh ~ >> $log

# Firefox
echo "firefox"
rm -rf ~/.mozilla/
$copy $BACKUP/.mozilla ~ >> $log

# Keepass
echo "keepass"
rm -rf ~/.config/keepassxc ~/.config/keepassxcrc
$copy $BACKUP/.config/keepassxc ~/.config >> $log
$copy $BACKUP/.config/keepassxcrc ~/.config >> $log

# Darktable
echo "darktable"
rm -rf ~/.config/darktable
$copy $BACKUP/.config/darktable ~/.config >> $log

# Spotify
echo "spotify"
rm -rf ~/.config/spotify
$copy $BACKUP/.config/spotify ~/.config >> $log

# Calibre
echo "calibre"
rm -rf ~/.config/calibre
$copy $BACKUP/.config/calibre ~/.config >> $log

# Raccoon
echo "raccoon"
rm -rf ~/.Raccoon
$copy $BACKUP/.Raccoon ~ >> $log

# Gnucash
echo "gnucash"
rm -rf ~/.local/share/gnucash
$copy $BACKUP/.local/share/gnucash ~/.local/share >> $log

# Electrum
echo "electrum"
rm -rf ~/.electrum
$copy $BACKUP/.electrum ~ >> $log
