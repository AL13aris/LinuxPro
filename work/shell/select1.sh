#!/bin/bash

echo "보안 설정할 파일 번호를 입력하세요 ==> "

select FILENAME ;
do 
	echo -n "선택된 파일 = $FILENAME "
	echo -n "보안 설정 완료"
	chmod go-rwx "$FILENAME"
done
exit 0
