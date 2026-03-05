#!/bin/bash
count=1
while true;
do
  echo "Count=$count"
  ((count++))
  if [ $count -gt 5 ]; then
  break
  fi
  done
