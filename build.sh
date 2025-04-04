#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BIN_DIR=$SCRIPT_DIR/bin
PROJ=project
COMPILE="src/main.c"
mkdir -p $BIN_DIR
gcc -g $COMPILE -o $BIN_DIR/$PROJ && $BIN_DIR/$PROJ # && valgrind --track-origins=yes --leak-check=yes $BIN_DIR/$PROJ
