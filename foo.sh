#!/bin/bash
#
# author: Dou Liyou
# version: 1.0
# usage: ./foo.sh start|stop|check 
# script to start | stop | check MTS system automatically.
# chinese words comment: 本脚本是为了能够批量启动特定的服务。目标服务的启动文件名都相同(iTool.sh),所以的服务目录均在一个目录，通过遍历目录找到目标文件然后依次执行
# ###################### 脚本使用了 if...then ... else ...fi 语句， for ... do ... done语句，使用了内置命令 find -name , 参数解释： -name<范本样式>：指定字符串作
# ###################### 为寻找文件或目录的范本样式；使用了预定义变量 $# 和 $0 $1, 变量含义: $# 存储接收参数的个数（不包含脚本自身）， $1 存储的是接收的第一个参数，
# ###################### $0 存储的是脚本自身文件名

# if ... else ... fi 
if [ $# == 1 ]
then
# for ... in ... do ... done
 for filename in $(find ./ -name "iTool.sh" )
  do
	echo $filename $1	
	sh $filename $1 
  done
exit
else
	echo "usage: " $0 "start|stop|check "
fi 
