#!/usr/bin/env bash

. ./utils.sh

VALUES=(
    0
    0
    0
)

for c in "${!VALUES[@]}"; do
    printf "Type the $[$c + 1]o value: "
    read VALUES[$c]
done

if [[ VALUES[2] -ge VALUES[0] && VALUES[2] -le VALUES[1] ]]; then
    success "Valor dentro do intervalo"
else
    warning "Valor fora do intervalo"
fi

exit $?