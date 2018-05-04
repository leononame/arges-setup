#!/bin/bash

# Locale

# Backup locale
sudo cp /etc/locale.gen /etc/locale.gen.old
# Add German and Spanish
sudo sed -i 's/\#de_DE\.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen
sudo sed -i 's/\#es_ES\.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen
echo "Generating locale..."
# Generate locales
sudo locale-gen

# Add input sources
dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'us'), ('xkb', 'de'), ('xkb', 'es')]"
# Date/Time and number format
dconf write /system/locale/region "'es_ES.UTF-8'"
