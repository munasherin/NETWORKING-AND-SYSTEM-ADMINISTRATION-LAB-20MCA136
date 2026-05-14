#!/bin/bash
echo "Enter file name:"
read file
echo "1. Create File"
echo "2. Write to File"
echo "3. Read File"
echo "4. Delete File"
echo "Enter choice:"
read ch
case $ch in
1) touch $file
echo "File created";;
2) echo "Enter text:"
read text
echo $text > $file
echo "Written to file";;
3) cat $file ;;
4) rm $file
echo "File deleted";;
*) echo "Invalid choice";;
esac
