#!/bin/bash
# Program:
# 	Try do tell you what you may eat.
# History:
# 2025/02/23	Sun	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
eat[1]="卖当当汉堡"     #写下你所收集到的店家
eat[2]="肯爷爷炸鸡"
eat[3]="彩虹日式便当"
eat[4]="起油越好吃大雅"
eat[5]="想不出吃啥学餐"
eat[6]="太师父便当"
eat[7]="池上便当"
eat[8]="怀念火车便当"
eat[9]="一起吃泡面"
eatnum=9                #需要输入有几个可用的餐厅数
eated=0

while ["${eated}" -lt 3];do
    check=$((${RANDOM}*${eatnum}/32767+1))
    mycheck=0
    if ["${eated}" -ge 1];then
        for i in $(seq 1 ${eated})
        do
            if[${eatedcon[$i]}==$check];then
            mycheck=1
            fi
        done
    fi
    if [${mycheck}==0];then
        echo "your may eat ${eat[${check}]}"
        eated=$((${eated}+1))
        eatedcon[${eated}]=${check}
    fi
done
