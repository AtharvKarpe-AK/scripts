#!/bin/bash

<<info

This script is used to take backup

info

dest="/home/ubuntu/backups"
src="/home/ubuntu/scripts"
timestamp=$(date '+%Y-%m-%d_%H_%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "Backup has taken"

