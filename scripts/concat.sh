#!/bin/bash

ERROR=0
IFS_OLD=$IFS
LINE=

while [ $# -gt 0 ]
do
    if [ ! -r "$1" ]; then
        echo "Cannot find file $1" >&2
        ERROR=1
    fi

    IFS=
    while read LINE
    do
        echo "$LINE"
    done < "$1"

    shift
done

IFS=$IFS_OLD
exit $ERROR
