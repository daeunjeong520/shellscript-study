#!/bin/bash

FRUIT=$1

case $FRUIT in
    "apple")
    echo "Fruit is apple"
    ;;
    "banana")
    echo "Fruit is banana"
    ;;
    "orange")
    echo "Fruit is orange"
    ;;
    *)
    echo "I don't know this fruit!"
    ;;
esac