#!/bin/bash

echo "Shell Script Name: $0"
echo "My favorite fruite is $1 and $2"
echo "All Parameters: $*"
echo "All Parameters: $@"
echo "Parameter Count: $#"

# $@와 $*
# $@: 개별로 인식(공백 기준)
for FRUIT in "$@"
do
    echo "$FRUIT"
done

# $*: 하나의 문자열로 인식
for FRUIT in "$*"
do
    echo "$FRUIT"
done