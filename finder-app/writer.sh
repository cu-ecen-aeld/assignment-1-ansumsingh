#!/bin/bash


if [ "$#" -ne 2 ]; then
   echo "Error: Two arguments required - <path to file> and <string to write>"
   exit 1
fi

     
writefile=$1
writestr=$2

dir=$(dirname "$writefile")
mkdir -p "$dir" 2>/dev/null

if [ $? -ne 0 ]; then
   echo "Error: Could not create the directory for the file"
   exit 1
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then 
   echo "Error: Could not write to the file"
   exit 1
fi
