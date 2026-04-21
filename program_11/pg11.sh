#!/bin/bash
echo "enter file name:"
read file
if [ -e "$file" ];then
   echo "Lines: $(wc -l <$file)"
   echo "Words: $(wc -w <$file)"
   echo "Characters: $(wc -c <$file)"
else
   echo "file does not exist"
fi

