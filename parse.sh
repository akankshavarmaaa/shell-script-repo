#!/bin/bash
echo "Hello :$1"

#IFS=internal field separator,read-read input and store it as variable for array(inputarray)
#-r=Prevents backslash \ from being treated specially , a= store result in an array format
#inputArray= array name (it can be anything)
#<<< input value(read the value next to <<< as input), $1=first commnad line argument
IFS=',' read -ra inputArray <<< "$1"
#

for arg in "${inputArray[@]}"; do
if [[ ! "$arg" =~ ^\.[A-Za-z]+$ ]]; then
#regex patterns for numbers ^=start of the line/word ^[0-9]+$, for alphabets ^[A-Za-z]+$, + one or more, $ end of line/word
echo "ERROR: provided input is a number $arg "
exit 1
fi
  echo " Passed argument : $arg"
done
