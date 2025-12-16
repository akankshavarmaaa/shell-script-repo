#!/bin/bash
echo "Hello :$1"

#IFS=internal field separator,read-read input and store it as variable for array(inputarray)
#-r=Prevents backslash \ from being treated specially , a= store result in an array format
#inputArray= array name (it can be anything)
#<<< input value(read the value next to <<< as input), $1=first commnad line argument
IFS=',' read -ra inputArray <<< "$1"
#

for arg in "${inputArray[@]}"; do
  echo " Passed argument : $arg"
done
