#!/bin/bash

VAR="I am a global variable"

demo_func() {
    local VAR="I am a local variable"
    echo $VAR
}
demo_func # local variable
echo $VAR # global variable