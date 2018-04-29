#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
fi

# Source variables
source vars.sh

# Install stuff that's needed before doing anything
echo "Installing rsync"
$inst rsync

source backup/data.sh
source backup/config.sh
source packages/install.sh
