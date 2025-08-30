#!/bin/bash

get_nickname() {
    read -p "Enter your nickname: " NICKNAME
    echo "Your nickname is ${NICKNAME:-guest}"
}
get_nickname

get_port() {
    read -p "Enter HTTP Port: " PORT
    PORT=${PORT:=80}
    echo "HTTP Port is ${PORT}"
}
get_port

get_logpath() {
    read -p "Enter your log path: " LOG_PATH
    echo "Your log path is ${LOG_PATH:?Error: Log path is required!!}"
}
get_logpath

BACKUP_DIR="/home/rocky/backup"
LOG_FILE="/tmp/backup.log"

log_message() {
    echo "$(date): $1" >> $LOG_FILE
    tail -1 $LOG_FILE
}

log_message "${BACKUP_DIR:+Backup Start.. Directory: $BACKUP_DIR}"