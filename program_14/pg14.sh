#!/bin/bash
echo "enter file name:"
read file
echo "enter word to delete lines:"
read word
# check if file exists
if [ ! -f"$file" ];then
   echo "file not found"
   exit 1
fi
echo "-----BEFORE-----"
cat "$file"
#delete lines containing the word
sed -i "/$word/d" "$file"
echo "-----AFTER-----"
cat "$file"
