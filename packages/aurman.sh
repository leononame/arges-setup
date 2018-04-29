#!/bin/bash

git clone https://aur.archlinux.org/aurman-git.git
cd aurman-git/
makepkg -si --needed --noconfirm
cd ..
rm -rf aurman-git/
