#!/bin/bash
if [ ! $1  ];then
    echo "请输入grep的内容"
    exit 1
elif [ ! $2  ];then
    echo "请输入你要取的内容 pid|cpu|mem"
    exit 1
fi
if [ $2 = "pid"  ];then
    ps aux | grep $1 |grep -v "grep $1"|grep -v $0|awk -F " " '{print $2}'
elif [ $2 = "cpu" ];then
    ps aux | grep $1 |grep -v "grep $1"|grep -v $0|awk -F " " '{print $3}'
elif [ $2 = "mem" ];then
    ps aux | grep $1 |grep -v "grep $1"|grep -v $0|awk -F " " '{print $4}'
else
    echo "请输入第2个参数 pid|cpu|mem"
fi

