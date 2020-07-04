#!/usr/bin/env bash

. ./utils.sh

printf "Insert the username: "
read NAME

warning "Checking..."

HAS_USER=$(cat /etc/passwd | grep -c "$NAME")

if [[ "$HAS_USER" -eq 1 ]]; then
    RESULT="Find: $(cat /etc/passwd | grep "$NAME")"
    success "$RESULT"
else
    error "User couldn't be finded"
fi

exit $?