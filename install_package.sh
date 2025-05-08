#!/bin/bash


<<info 

This script is used to install packages.

info

echo -e "Package is installing \n"

sudo apt-get update > /dev/null

sudo apt-get install $1 -y > /dev/null

echo -e "\nPackage succsfully installed"
