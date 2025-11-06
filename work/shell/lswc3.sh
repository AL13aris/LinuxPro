#!/bin/bash

# 파일 갯수 표시프로그램
#


if  [ $# -eq 0 ] ; then
	echo -n "파일 갯수 : "
	ls | wc -l
elif [ $# -eq 1 ] ; then
	echo -n "파일 갯수 : "
	ls $1 | wc -l
else
	echo "사용법 : $0 디렉터리 " 1>&2
	exit 1
fi
exit 0
