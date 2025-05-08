#!/bin/bash
#
<<info

This script will update and upgrade user.

info

read -p "Do you want to update? yes/no " check

if [ "$check" == "yes" ]; then
	echo "Update is started...."

	sudo apt-get update > /dev/null

	echo "update is completed successfully!"

else
	echo "Not updated."

fi

read -p "Do you want to upgrade? yes/no " check1

if [ "$check1" == "yes" ]; then
	echo "Upgrade is started...."

	sudo apt-get upgrade

	echo "Upgrade is completed successfully!"
	
else
	echo "No upgrade!"

fi


