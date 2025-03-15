#!/usr/bin/env bash

# Output the list of files to cat to a file to avoid command line limitations.
FILE_LIST=$(mktemp)
trap 'rm $FILE_LIST'
find $1/frameworks/support/ -name current.txt | grep /api/ | grep -v /ktx/ | sort > $FILE_LIST

# Combine the contents of all the files into a single signature file.
metalava signature-cat @$FILE_LIST --format 4.0 > androidx-api.txt

