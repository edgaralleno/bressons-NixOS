#!/bin/bash

# script that should copy my config files
#

rm -r /home/natem/Storage/Nextcloud/config_bak/hypr/ /home/natem/Storage/Nextcloud/config_bak/nixos/ /home/natem/Storage/Nextcloud/config_bak/waybar/ /home/natem/Storage/Nextcloud/config_bak/wal /home/natem/Storage/Nextcloud/config_bak/ncmpcpp /home/natem/Storage/Nextcloud/config_bak/kitty
cp -r /home/natem/.config/hypr/ /home/natem/.config/waybar/ /etc/nixos/ /home/natem/.config/wal/ /home/natem/.config/ncmpcpp/ /home/natem/.config/kitty/ -t /home/natem/Storage/Nextcloud/config_bak/
# git add .
# git commit
# git push -u origin main
# echo "edgaralleno"
# echo "ghp_djRIGEnCyIa8ILTTUVpukGtQbVbLubLub0IwrJJ"
