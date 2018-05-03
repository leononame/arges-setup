#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be root" 2>&1
  exit 1
fi

# Source variables
source vars.sh

# Add user and group
echo "Create group leo and add user leo..."
groupadd -g 1000 leo
usermod -a -G leo leo

# Install stuff that's needed before doing anything
echo "Installing rsync..."
$inst rsync

source backup/data.sh
source backup/config.sh
source packages/install.sh
