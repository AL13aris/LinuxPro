#!/bin/bash

str="human.smil.jpg"
front=${str%%.*}
rear=${str##*.}

echo "string : $str"
echo "front : $front"
echo "rear $rear"

