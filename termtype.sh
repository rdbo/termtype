#!/bin/sh

delay="$1"

if [ -z "$delay" ]; then
    echo "missing delay parameter"
    exit 1
fi

# NOTE: lines must end with \n, otherwise they don't register!
while IFS= read -r line; do
    len=${#line}
    for i in $(seq 0 $len); do
        printf "%c" "${line:$i:1}"
        sleep $delay
    done

    echo
done