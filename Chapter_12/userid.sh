#!/bin/bash
# Program
# 	Use id, finger command to check system account's information.
# History
# 2024/06/13	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

users=$(cut -d ':' -f1 /etc/passwd)	#撷取账号名称
for username in ${users}
do
	id ${username}
done
