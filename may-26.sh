#!/bin/bash
if [[ "$#" -eq 0 ]]; then
  echo "no arguments passed"
  exit 1
fi

if [[ "$#" -ne 3 ]]; then
  echo "passed arguments should be three"
  exit 1
fi

count=0
for arg in "$@"
do

if [[ ! "$arg" =~ ^[a-zA-Z]+$ ]]; then
echo "string '$arg' contains non-alphabetic characters"
exit 1
fi
if [[ "$arg" == "shubham" ]]; then
  ((count++))
fi
done

if [[ "$count" -ge 1 ]]; then
  echo "success: shubham appreared in argument "$count" times "
   else
     echo "Fail: shubham is not present"
  fi





