#!/bin/bash

usage_exit() {
    echo "Usage: $0 [-m message] file ..." 1>&2
    exit 1
}

# default value of $MESSAGE
MESSAGE=""

# option parsing
while getopts m:h OPT
do
    case $OPT in
        m)  MESSAGE=$OPTARG
            ;;
        h)  usage_exit
            ;;
        \?) usage_exit
            ;;
    esac
done

shift $(($OPTIND - 1))

if [ "$MESSAGE" = "" ]; then
    MESSAGE="updated $@"
fi

git add $@
git commit -m "$MESSAGE"
git push origin master
