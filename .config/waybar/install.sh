#!/bin/bash

mkdir ~/.config/waybar
cp -r ./* ~/.config/waybar
chmod +x ~/.config/waybar/scripts/mullvad-status.sh
