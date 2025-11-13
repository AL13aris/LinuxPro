#!/bin/bash


oper="$1"
num1="$2"
num2="$3"

if [ "$#" -ne 3 ]; then
	echo "사용법 $(basename $0) <연산자> <숫자1> <숫자2>"
	echo "예시 $(basename $0) + 2 3"
	echo "연산자 목록 ( + - x / %)"
	exit 1
fi

case "$oper" in
	+) 
		result=$((num1 + num2))
		echo "결과 $num1 $oper $num2 = $result"
		;;
	-)
		result=$((num1 - num2))
		echo "결과 $num1 $oper $num2 = $result"
		;;
	x|X)
		result=$((num1 * num2))
		echo "결과 $num1 $oper $num2 = $result"
		;;
	/)
		if [ "$num2" -eq 0 ]; then
			echo " 0으로 나누기 불가"
			exit 1
		fi
		result=$((num1 / num2))
		echo "결과 $num1 $oper $num2 = $result"
		;;
	%)
		if [ "$num2" -eq 0 ]; then
                        echo " 0으로 나누기 불가"
                        exit 1
                fi

		result=$((num1 % num2))
		echo "결과 $num1 $oper $num2 = $result"
		;;
	*)
		echo "유효 하지 않은 연산자"
		echo "연산자 목록 ( + - x / %)"
		exit 1
		;;
esac

	

