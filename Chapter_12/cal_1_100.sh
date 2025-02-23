#!/bin/bash
# Program:
# 	Use loop to calculate "1+2+3+...+100" result.
# History:
# 2024/06/13	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

s=0 #加总和
i=0 #累计数
while [ "${i}" != "100" ]
do
	i=$(($i+1)) #自增1
	s=$(($s+$i)) #加总
done
echo "The result of '1+2+3+...+100' is ==> $s"
