#!/bin/bash

# Read each line of the file
while read line; do
  # Perform the nslookup
  nslookup "$line"
done < file.txt
