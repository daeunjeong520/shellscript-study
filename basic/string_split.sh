#!/bin/bash

FRUITS="apple orange banana strawberry"

echo ${#FRUITS}
echo ${FRUITS:6}
echo ${FRUITS:6:6}
echo ${FRUITS:(-10)}
echo ${FRUITS:(-10):2}