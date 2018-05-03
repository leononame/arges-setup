#!/bin/bash

# Locale

# Backup locale
cp /etc/locale.gen /etc/locale.gen.old
# Add German and Spanish
sed -i 's/\#de_DE\.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen
sed -i 's/\#es_ES\.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen
echo "Generating locale..."
# Generate locales
locale-gen

