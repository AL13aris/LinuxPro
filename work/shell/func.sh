#!/bin/bash

echo "Positional parameter (script): $1"

func_test ()
{
	echo "Postitonal parameter (funtion): $1"
	RETURN_VALUE=$?
	echo "exit code: $RETURN_VALUE."
}
func_test "함수인지"
