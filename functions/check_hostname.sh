# shellcheck shell=bash

check_hostname()
{
    _PING=
    _PING_RESULT=
    _HOST=${1:-$(hostname)}

    case $(uname -s) in
        Darwin | Linux | FreeBSD | OSF1 ) _PING="ping -c1 $_HOST" ;;
        HP-UX ) _PING="ping $_HOST 64 1" ;;
        SunOS ) _PING="ping $_HOST" ;;
        * ) return 1 ;;
    esac

    _PING_RESULT=$(eval "$_PING 2>&1")
    if [ $(echo "$_PING_RESULT" | grep -ci "Unknown host") -eq 0 ]
    then
        return 0
    else
        return 1
    fi
}
