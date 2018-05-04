#!/bin/bash

# Load vars
source vars.sh

log="logdata"

# Post install: restore data and config backups, install packages
echo -e "############ Post installation preparation script"
echo -e "########## System Configuration"
source system-config.sh

# Restore backup
echo -e "\n\n########## Backup restore"
source backup/data.sh
source backup/config.sh

echo -e "\n\n########## Software installation"
# Install packages
source packages/install.sh

# Install ui stuff
echo -e "\n\n########## UI"
source ui.sh

# Settings
echo -e "\n\n########## Settings"
source settings.sh
