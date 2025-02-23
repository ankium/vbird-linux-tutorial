#!/bin/bash
#Program:
#	User input a scale number to calculate pi number.
#History:
#2024/05/21	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "This program will calculate pi value.\n"
echo -e "You should input a float number to calculate pi value.\n"
read -p "The scale number (10~10000):" checking
num=${checking:-"10"}	#开始判断是否输入数值
echo -e "Starting calculate pi value. Be patient."
time echo "scale=${num}; 4*a(1)" | bc -lq
