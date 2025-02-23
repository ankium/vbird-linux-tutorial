#!/bin/bash
#Program:
#	User inputs 2 integer numbers; program will cross these two numbers.
#History:
#2024/05/21 Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "You SHOULD input 2 numbers, I will multiplying them! \n"
read -p "first number:" firstnum
read -p "second number:" secondnum
total=$((${firstnum}*${secondnum}))
echo -e "\n The result of ${firstnum} x ${secondnum} is ==> ${total}"
