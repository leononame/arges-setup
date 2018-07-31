#!/bin/bash

# Disable tracker
echo "Disable tracker"
tracker daemon -t
cd ~/.config/autostart
cp -v /etc/xdg/autostart/tracker-* ./
for FILE in `ls tracker-*`; do echo Hidden=true >> $FILE; done
rm -rf ~/.cache/tracker ~/.local/share/tracker

# Locale

# Backup locale
sudo cp /etc/locale.gen /etc/locale.gen.old
# Add German and Spanish
sudo sed -i 's/\#de_DE\.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen
sudo sed -i 's/\#es_ES\.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen
echo "Generating locale..."
# Generate locales
sudo locale-gen

echo "Copy configuration"
cp -arf dconf/. /
echo "Compile configuration"
sudo dconf compile /etc/dconf/db/local /etc/dconf/db/local.d