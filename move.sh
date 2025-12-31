#!/bin/bash

#count is a initialization of value 0
count=0



while IFS=',' read -r order_id business_area currency last_price qty timestamp
do 

#readable date = changing date format
# date -d = dont print current date, use the date provinding here
# @= time is in epoch(miliseconds)
# $= use the value of (())
#timestamp/1000= miliseconds to seconds
# + Start of format string
# %y = year 25, %Y= 2025
	readable_date=$(date -d "@$((timestamp/1000))" "+%Y/%m/%d")
	
# airthmetic operations of if (( ))	
	
	if [[ "$business_area" == "Retail" ]]; then
	echo "order: $order_id | business_area: $business_area | timestamp: $readable_date"
	((count++))
	fi

#input file = orders_100_records.csv
done < orders_100_records.csv

echo " $count "
echo "12334"
echo "moveu"

