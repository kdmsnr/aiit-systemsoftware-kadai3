#!/bin/bash

LC_CTYPE=C
DEL=`expr $RANDOM % 5`
LEN=`expr 20 + $DEL`

cat /dev/urandom | tr -dc "a-zA-Z0-9@#*=[]" | dd bs=$LEN count=1 2>/dev/null
echo;
