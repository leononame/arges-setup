#!/bin/bash

# Import pgp key
gpg --recv-keys 465022E743D71E39
git clone https://aur.archlinux.org/aurman-git.git
cd aurman-git/
makepkg -si --needed --noconfirm
cd ..
rm -rf aurman-git/
