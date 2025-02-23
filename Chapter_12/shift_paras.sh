#!/bin/bash
# Program:
# 	Program shows the effect of shift function.
# History:
# 2024/05/22	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Total parameter number is ==> $#"
echo "Your whole parameter is 	==> '$@'"
shift	#进行第1次[一个变量的shift]
echo "Total parameter number is ==> $#"
echo "Your whole parameter is 	==> '$@'"
shift 3	#进行第2次[三个变量的shift]
echo "Total parameter number is ==> $#"
echo "Your whole parameter is 	==> '$@'"
