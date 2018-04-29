#!/bin/bash

# Install pacman packages

echo -e "\n\n"
echo "########## Installation"
echo -e "Official packages\n"
$inst - < packages/pkglist

# Install aurman
echo -e "\n\naurman\n"
runuser $localuser packages/aurman.sh

# Install zprezto
echo -e "\n\nzprezto\n"
runuser $localuser -s /usr/bin/zsh packages/zprezto.sh

