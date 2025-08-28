#!/bin/bash

# printf: formatting 지정 가능. 줄바꿈 수동(\n) => echo보다 정밀한 출력 가능
NAME="Daeun"
echo "Hello, $NAME!"
printf "Hello, $NAME!\n"

# formatting
NAME="Daeun"
AGE=27

printf "Name is %s, and age is %d years old.\n" $NAME $AGE