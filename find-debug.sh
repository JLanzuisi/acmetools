#!/bin/sh

start="$PWD"

while true; do
    if [ "$PWD" = "/" ]; then
	echo "Couldn't find debug.sh"
	exit 1
    fi

    if [ -f debug.sh ]; then
	echo "Executing $PWD/debug.sh"
	exec $PWD/debug.sh
    else
	cd ..
    fi
done
