#!/bin/sh

# Create a world file that doesn't contain entries that aren't installed
# at the moment

while read f; do
    if ls -D /var/db/pkg/$f* > /dev/null; then
        echo $f
    fi
done < /var/db/pkg/world 2> /dev/null
