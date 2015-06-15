#!/bin/bash

# ./names.sh names.txt result.txt temp.txt

while read line
do
  whois $line > $3

  echo $line
  grep "No match for" $3
  grep "Registrant Name:" $3
  grep "Registrant Email:" $3
  grep "Registrar URL:" $3
  grep "Registrar Registration Expiration Date:" $3
  echo ""
done < $1 >> $2
