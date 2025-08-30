#!/bin/bash

# ${VAR:-value}
# ${VAR:=value}
SHELL=""
echo ${SHELL:-/bin/bash}
echo $SHELL

echo ${SHELL:=/bin/bash}
echo $SHELL
echo

# ${VAR:+value}
SHELL="/bin/bash"
echo ${SHELL:+/bin/sh}
SHELL=""
echo ${SHELL:+/bin/sh}

# ${VAR:?error}
# ${VAR?error}
SHELL=""
#echo ${SHELL:?null or notset}
echo ${SHELL?not set}

unset SHELL
echo ${SHELL?not set}