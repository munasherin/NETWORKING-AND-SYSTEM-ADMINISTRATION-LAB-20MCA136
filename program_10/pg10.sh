#!/bin/bash
echo "enter file name:"
read file
echo "1.create file"
echo "2.write file"
echo "3.read file"
echo "4.delete file"
echo "enter choice:"
read ch
case $ch in
1) touch $file
   echo "file created";;
2) echo "enter text:"
   read text
   echo $text>$file
   echo "written to file";;
3) cat $file;;
4) rm $file
   echo "file deleted";;
*) echo "invalid choice";;
esac
