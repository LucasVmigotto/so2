#!/usr/bin/env bash

. ./utils.sh

printf "Type the absolute origin directory path: "
read PATH_ORIGIN

printf "Type the file name: "
read FILE_ORIGIN

printf "Type the absolute final directory path: "
read PATH_FINAL

if [[ ! -d "$PATH_ORIGIN" ]]; then
    error "$PATH_ORIGIN invalid origin path"
    exit
fi

if [[ ! -f "$PATH_ORIGIN/$FILE_ORIGIN" ]]; then
    error "$FILE_ORIGIN invalid name"
    exit
fi

if [[ ! -d "$PATH_FINAL" ]]; then
    error "$PATH_FINAL invalid final path"
    exit
fi

warning "Copying..."

cp "$PATH_ORIGIN/$FILE_ORIGIN" "$PATH_FINAL"

RESULT=$(ls -la "$PATH_FINAL/$FILE_ORIGIN")

success "$RESULT"

exit $?