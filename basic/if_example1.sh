#!/bin/bash
# Number comparison operators
# [ NUM1 -eq NUM2 ]  NUM1 == NUM2
# [ NUM1 -ne NUM2 ]  NUM1 != NUM2
# [ NUM1 -gt NUM2 ]  NUM1 > NUM2
# [ NUM1 -ge NUM2 ]  NUM1 >= NUM2
# [ NUM1 -lt NUM2 ]  NUM1 < NUM2
# [ NUM1 -le NUM2 ]  NUM1 <= NUM2

NUMBER=10

if [[ $NUMBER -eq 10 ]]
then
    echo "The number is 10"
elif [[ $NUMBER -gt 10 ]]
then
    echo "The number is greater than 10"
else
    echo "The number is less than 10"
fi