#!/bin/bash

<<help 

this script is used to take a backup

backup is in z.ip file

help

src=$2
dest=$1

timestamp=$(date '+%Y-%m-%d:%H:%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "Backup is completed"

aws s3 sync "$dest" s3://tws-backups-scripts

echo "Backup is added to S3"


