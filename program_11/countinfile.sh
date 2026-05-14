#!/bin/bash
echo "Enter file name:"
read file
if [ -e "$file" ]; then
echo "Lines: $(wc -l < $file)"
echo "Words: $(wc -w < $file)"
echo "Characters: $(wc -c < $file)"
else
echo "File does not exist"
fi
