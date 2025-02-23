#!/bin/bash
# Program:
# 	You input your demobilization date,I calculate how many days before you demobilize.
# History:
# 2024/05/24	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 告知用户这种程序的用途，并且告知应该如何输入日期格式
echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20240524): " date2

# 2. 通过正则表达式测试用户输入内容是否正确
date_d=$(echo ${date2} | grep '[0-9\{8\}]')	#是否8个数字
if [ "date_d" == "" ]; then
	echo "You input the wrong data format..."
	exit 1
fi

# 3. 开始计算日期
declare -i date_dem=$(date --date="${date2}" +%s)	#从1970年1月1日至退伍日期秒数
declare -i date_now=$(date +%s)	#从1970年1月1日至当前秒数
declare -i date_total_s=$((${date_dem}-${date_now}))	#退伍日期与当前时间秒数差
declare -i date_d=$((${date_total_s}/60/60/24))	#转为日数
if [ "${date_total_s}" -lt "0" ];then
	echo "You had been demobilization before: " $((-1*${date_d})) " days ago"
else
	declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60))
	echo "You will demobilization after ${date_d} days and ${date_h} hours."
fi
