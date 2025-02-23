#!/bin/bash
# Program:
# 	Using netstat and grep to detect WWW,SSH,FTP and Mail services.
# History:
# 2024/05/24	Sun	First release
# PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
# export PATH
# 1. 先作一些告知动作
# echo "Now,I will detect your Linux server's services!"
# echo -e "The www,ftp,ssh,and mail(smtp) will be detect! \n"
# 2. 开始进行一些测试工作并输出信息
testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile}	#转存数据到内存中
testing=$(grep ":80 " ${testfile})	#侦测80端口是否存在
if [ "${testing}" != "" ];then
	echo "WWW is running in your system."
fi

testing=$(grep ":22 " ${testfile})	#侦测22端口是否存在
if [ "${testing}" != "" ];then
	echo "SSH is running in your system."
fi

testing=$(grep ":21 " ${testfile})	#侦测21端口是否存在
if [ "${testing}" != "" ];then
	echo "FTP is running in your system."
fi

testing=$(grep ":25 " ${testfile})	#侦测25端口是否存在
if [ "${testing}" != "" ];then
	echo "Mail is running in your system."
fi

testing=$(grep ":3306" ${testfile})	#侦测3306端口是否存在
if [ "${testing}" != "" ];then
	echo "MySQL is running in you system."
fi
