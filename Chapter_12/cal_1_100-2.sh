#!/bin/bash
# Program:
# 	Try do calculate 1+2+...+${your input}
# History:
# 2025/02/23	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input a number,I will count for 1+2+...+your_input:" nu
s=0 #加总和
for((i=1;i<=${nu};i=i+1))
do
    s=$((${s}+${i}))
done
echo "The result of '1+2+3+...+${nu}' is ==> $s"
