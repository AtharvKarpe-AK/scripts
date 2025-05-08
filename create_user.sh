#!/bin/bash


<<help

This script is for create user

help

read -p "you want to create user? yes/no " check1

if [ "$check1" == "yes" ]; then
	while true; do
		echo "============= Create user start ==============="
		read -p "Enter the username: " username
		read -p "Enter the password: " password
		sudo useradd -m "$username"
		echo "$username:$password" | sudo chpasswd
		echo "User successfully created"
		echo "============ Create user end ==================="

		echo "Please find below user details "

		cat /etc/passwd | grep "$username" | wc | awk '{print $1 "User is added"}'

		read -p "you want to create another user? yes/no " again1
		if [ "$again1" != "yes" ]; then
			echo "nothing to add"

			break
		fi
	done



else
	echo "Bye!"

fi

read -p "you want to check user list? yes/no" check
if [ "$check" == "yes" ]; then
	cat /etc/passwd
else
	echo "Nothing to show"
fi

read -p "you want to remove user from list? yes/no" check2
if [ "$check2" == "yes" ]; then
	while true; do
		read -p "enter username " username1
		sudo userdel "$username1"
		echo "$username1 successfully deleted"
		echo "Please find below updated list"
		echo "============================================"
		cat /etc/passwd
		echo "============================================"
		read -p "you want to delete another user? yes/no " again
		if [ "$again" != "yes" ]; then
			echo "nothing to delete Bye!"
			break
		fi
	done

else
	echo "Bye Have a good day!"
fi




