#!/bin/bash

CMDNAME=$(basename $0)
USAGE="Usage: $CMDNAME [-v] [dir1] dir2"

CURDIR=$(pwd)
DIR1=
DIR2=
DIR1_FILES=/tmp/files1.$$
DIR2_FILES=/tmp/files2.$$
ALL_FILES=/tmp/allfiles.$$
COMMON_FILES=/tmp/comfiles.$$
TMP=/tmp/tmp.$$
FOUND=FALSE
FIRST=
VERBOSE=FALSE

trap 'rm -f /tmp/*.$$; exit 1' 1 2 3 15

while :
do
    case $1 in
        -v )    VERBOSE=TRUE
                shift
                ;;
        -- )    shift
                break
                ;;

done
