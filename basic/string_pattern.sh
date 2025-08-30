#!/bin/bash

FILE_NAME="memo-app-repo.tar.gz"
echo ${FILE_NAME#*.}
echo ${FILE_NAME##*.}

echo ${FILE_NAME%.*}
echo ${FILE_NAME%%.*}

# 파일명과 파일 경로 추출
FILE_PATH="/etc/httpd/httpd.conf"

echo ${FILE_PATH%/*}  # Directory path
echo ${FILE_PATH##*/} # File name

FILE="logfile.txt"
echo ${FILE%.*}
echo ${FILE#*.}