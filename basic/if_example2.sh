#!/bin/bash

#1. if [ $var operator $var ]
VALUE1=10
VALUE2=10

if [ $VALUE1 = $VALUE2 ]; then
    echo True
else
    echo False
fi

if [[ $VALUE1 == $VALUE2 ]]; then
    echo True
else
    echo False
fi

#2. if [ $var operator value ]
VALUE=0

if [[ $VALUE == 0 ]]; then
    echo True
else
    echo False
fi

#3. if [ operator $var ]
VALUE=""

if [[ -z $VALUE ]]; then
    echo "The Value is Empty"
else
    echo "The value is $VALUE"
fi

#4. if [ condition ] operator [ condition ]
VALUE=5

if [[ $VALUE -gt 0 && $VALUE -lt 10 ]]; then
    echo True
else
    echo False
fi