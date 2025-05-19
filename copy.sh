#!/bin/bash

# script that should copy my config files
#

rm -r hypr/ nixos/ waybar/
cp -r ~/.config/hypr/ ~/.config/waybar/ /etc/nixos/ -t ~/Storage/Nextcloud/config_bak/
# git add .
# git commit
# git push -u origin main
# echo "edgaralleno"
# echo "ghp_djRIGEnCyIa8ILTTUVpukGtQbVbLubLub0IwrJJ"
