#!/bin/bash
echo "Enter file name:"
read file
echo "Enter start line:"
read start
echo "Enter end line:"
read end
echo "----- BEFORE -----"
cat "$file"
sed -i "$start,$end d" "$file"
echo "Deleted lines $start to $end"
echo "----- AFTER -----"
cat "$file"
