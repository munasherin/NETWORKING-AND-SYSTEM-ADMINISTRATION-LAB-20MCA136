#!/bin/bash
echo "Enter file name:"
read file
echo "Enter word to delete lines:"
read word
# Check if file exists
if [ ! -f "$file" ]; then
echo "File not found!"
exit 1
fi
echo "----- BEFORE -----"
cat "$file"
# Delete lines containing the word
sed -i "/$word/d" "$file"
echo "----- AFTER -----"
cat "$file"
