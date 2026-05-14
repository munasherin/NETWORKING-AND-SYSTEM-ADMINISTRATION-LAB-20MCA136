#!/bin/bash
echo "Enter username:"
read user
echo "Enter password:"
read pass
if [ "$user" = "admin" ] && [ "$pass" = "1234" ]
then
echo "Login successful"
else
echo "Invalid username or password"
fi
