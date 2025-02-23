#!/bin/bash
# Program
# 	This script only accepts the flowing parameter:one,two or three.
# History
# 2024/06/10	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit(){
	echo "Your choice is ${1}"	#加上-n可以不断行继续在同一行显示
}
echo "This program will print your selection!"
case ${1} in
	"one")
		printit 1	#请注意，printit指令后面还有接参数！
		;;
	"two")
		printit 2
		;;
	"three")
		printit 3
		;;
	*)
		echo "Usage ${0} {one|two|three}"
		;;
esac
