#!/bin/bash

# Read each line of the file
while read line; do
  # Remove "https://" and "http://" from the beginning of the line
  domain=$(echo "$line" | sed -e 's/https:\/\///' -e 's/http:\/\///')

  # Perform the nslookup
  nslookup "$domain"
done < file.txt
