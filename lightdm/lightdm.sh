#!/bin/bash

echo "Install LightDM theme"
$aurinst lightdm-webkit-theme-litarvan
$aurinst lightdm-webkit-theme-material2

sudo rm /etc/lightdm/lightdm-webkit2-greeter.conf
sudo -E cp lightdm/lightdm-webkit2-greeter.conf /etc/lightdm/
