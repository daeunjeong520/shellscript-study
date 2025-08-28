#!/bin/bash

# Create a function called greet_user
# Prompts greeting message with user's name
greet_user() {
    local NAME
    read -p "Enter your name: " NAME

    if [[ -z $NAME ]]; then
        echo "Hello, Stranger!"
    else
        echo "Hello, $NAME!"
    fi
}
greet_user