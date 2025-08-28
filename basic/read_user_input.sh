#!/bin/bash

# One Input Value
echo "Enter your name:"
read NAME
echo "Your name is $NAME"

read -p "Enter your age: " AGE
echo "Your age is $AGE"

# Multiple Input Values
echo "Enter your first and last name"
read FIRST_NAME LAST_NAME
echo "Hello, $FIRST_NAME $LAST_NAME"

read -p "Enter your NAME and AGE: " NAME AGE
echo "name: $NAME, age: $AGE"