#!/bin/bash
echo "Enter folder name:"
read folder
echo "Enter file name:"
read file
echo "Enter text to write:"
read text
# Check folder
if [ -d "$folder" ]; then
echo "Folder already exists"
else
mkdir "$folder"
echo "Folder created"
fi
# Check file
if [ -f "$folder/$file" ]; then
echo "File already exists"
else
touch "$folder/$file"
echo "File created"
fi
# Write to file
echo "$text" >> "$folder/$file"
echo "Text written to file"
