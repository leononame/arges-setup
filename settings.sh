#!/bin/bash

# Locale

# Backup locale
cp /etc/locale.gen /etc/locale.gen.old
# Add German and Spanish
echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen
echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen
echo "Generating locale..."
# Generate locales
locale-gen
