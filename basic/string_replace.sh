#!/bin/bash

FRUITS="apple banana orange banana apple"
echo "${FRUITS/banana/mango}"
echo "${FRUITS//banana/mango}"
echo "${FRUITS/banana}"
echo "${FRUITS//banana}"

echo "${FRUITS/#apple/mango}"
echo "${FRUITS/%apple/mango}"