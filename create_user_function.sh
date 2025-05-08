#!/bin/bash

<<help

This script is for functions

help

function create_user {

read -p "Enter username: " username
sudo useradd -m $username

echo "user added successfully!"

}

create_user
create_user
create_user
