#!/bin/bash

<<help

This script is used to check user is there or nott

help

read -p "Enter the user name: " username

count=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}')

echo "$count user is present"


