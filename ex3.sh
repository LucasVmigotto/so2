#!/usr/bin/env bash

. ./utils.sh

printf "Insert the first positive value: "
read VALUE_ONE

[[ $VALUE_ONE -lt 0 ]] && error "Value need to be positive" && exit 1

printf "Insert the second greater or equal value: "
read VALUE_TWO

[[ ! $VALUE_TWO -ge $VALUE_ONE ]] && error "Value need to be greater or equal to the last one" && exit 1

printf "Insert the third value: "
read VALUE_THREE

[[ ! $VALUE_THREE -lt $VALUE_ONE ]] && error "Value need to less than the first one" && exit 1

COUNTER=$VALUE_ONE

while [[ $COUNTER -lt $VALUE_TWO ]]; do
    warning "$COUNTER"
    COUNTER=$[$COUNTER + $VALUE_THREE]
done

exit $?