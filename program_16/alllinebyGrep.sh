#!/bin/bash
echo "Enter file name:"
read file
echo "Enter word to search:"
read word
echo "Matching lines:"
grep "$word" "$file"
echo "Searching completed."
