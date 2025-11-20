#!/bin/bash

if [ $TERM != "xterm" ]; then
	echo "현재 터미널에는 x-terminal이 아닙니다"
	exit 1
fi
i=0
while [ $i -lt 4 ]; do
	gnome-terminal &
	let "i += 1"
done

exit 0

