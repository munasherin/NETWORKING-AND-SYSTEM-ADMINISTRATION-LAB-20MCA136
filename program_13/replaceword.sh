#!/bin/bash
read -p "Enter the filename: " file
read -p "Enter the old word to replace: " old
read -p "Enter the new word to replace with: " new
echo -e "\nFile $file before replacement:"
echo -e "\n... opening $file ...\n"
cat "$file"
echo -e '\n'
read -p "Do you want to replace the string in the entire file? (y/n): " yn
if [[ $yn == "y" || $yn == "Y" ]]; then
sed -i "s/$old/$new/g" "$file"
elif [[ $yn == "n" || $yn == "N" ]]; then
read -p "Enter the line number to start replacement from: " start
read -p "Enter the number of lines after start to end the replacement: " count
end=$((start + count - 1))
sed -i "${start},${end}s/$old/$new/g" "$file"
else
echo -e "\nInvalid input. No changes applied."
fi
echo -e "\nFile $file after replacement:"
cat "$file"
