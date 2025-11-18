#!/bin/bash

if [[ $# -eq 0 ]] ; then
        echo "사용법: $0 userid" >&2
        exit 1
fi

w="$( who | grep $1)"

if [[ -z $w ]] ; then
        echo "$1 로그인 안함"
else
        echo "$1 로그인 상태"
fi
exit 0


