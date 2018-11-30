#!/bin/bash

DATA=ascii.data
line_length=$(cat $DATA | awk '{print length}' | sort -nr | head -1)

printf '%0.s-' $(seq 1 $line_length)
printf '\n'

cat $DATA

printf '%0.s-' $(seq 1 $line_length)
printf '\n'

echo "$(stat -c%s "$DATA") bytes, $line_length chars wide"

