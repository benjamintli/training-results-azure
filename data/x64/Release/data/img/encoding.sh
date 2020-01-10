#!/bin/bash
#enter input encoding here
#output encoding(UTF-8)
TO_ENCODING="UTF-8"
#convert
CONVERT=" iconv -t UTF-16 "
CONVERT_AGAIN=" iconv -f utf-16le -t utf-8 "
#loop to convert multiple files 
for  file  in  *.txt; do
     $CONVERT   "$file"   -o  "$file"
     $CONVERT_AGAIN   "$file"   -o  "$file"
done
exit 0
