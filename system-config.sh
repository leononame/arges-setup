#!/bin/bash

# Add user and group
echo "Create group leo and add user leo..."
sudo groupadd -g 1000 leo >>$log
sudo usermod -a -G leo leo >>$log

# Install stuff that's needed before doing anything
echo "Installing rsync..."
sudo -E $inst rsync >>$log