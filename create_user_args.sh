#!/bin/bash

<<help

No this script is with arguments

No need to create or read variable is this script now

help

echo "=================User creation start================="

sudo useradd -m "$1"

read -sp "Enter the password" password

echo "$1:$password" | sudo chpasswd

echo -e "\n=================== creation completed ================"
