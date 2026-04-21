#!/bin/bash

read -p "enter the filename: " file
read -p "enter the old word to replace: " old

read -p "enter the new  word to replace with: " new

echo -e "\nfile $file before replacement:"
echo -e "\n... opening $file...\n"
cat "$file"
echo -e '\n'
read -p "do you want to replace the string in the entire file? (y/n): " yn
if [[ $yn == "y" || $yn == "y" ]];then
sed -i "s/$old/$new/g" "$file"
elif [[ $yn == "n" ||  $yn == "N" ]];then
read -p "enter the line number to staet replacement from: " start
read -p "enter the number of lines after start to end the replacement: " count
end=$((start + count - 1))
sed -i "${start},${end}s/$old/$new/g" "$file"
else
echo -e "\nInvalid input.no changes applied."
fi
echo -e "\nfile #file after replacement:"
cat  "$file"
