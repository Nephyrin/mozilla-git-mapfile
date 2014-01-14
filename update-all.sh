#!/bin/bash

for r in $(hg -R mozilla-hg showconfig paths | sed -r 's/paths.(.*)=.*/\1/'); do
    ./update.sh "$r" "$@"
done
