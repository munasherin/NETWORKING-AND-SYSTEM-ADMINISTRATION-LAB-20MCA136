#!/bin/bash
echo "Enter file name:"
read file
echo "Enter username:"
read username
# Check if file exists
if [ -f "$file" ]; then
echo "File exists"
else
touch "$file"
echo "File created"
fi
# Add username
echo "$username" >> "$file"
echo "Username added"
# Print file content
echo "File contents:"
cat "$file"
