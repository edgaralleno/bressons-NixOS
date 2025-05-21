#!/bin/bash

# script that should copy my config files
#

rm -r hypr/ nixos/ waybar/
cp -r ~/.config/hypr/ ~/.config/waybar/ /etc/nixos/ -t ~/Storage/Nextcloud/config_bak/
cp -r ~/.cache/wal/ -t ~/Storage/Nextcloud/config_bak/wal_cache/
cp -r ~/.config/wal/ -t ~/Storage/Nextcloud/config_bak/wal_config/
# git add .
# git commit
# git push -u origin main
# echo "edgaralleno"
# echo "ghp_djRIGEnCyIa8ILTTUVpukGtQbVbLubLub0IwrJJ"
