#!/bin/bash
#
#此脚本可以将一个文件复制多份，使用序号作为新文件夹的名字
#

if [ $# -lt 3 ]; then
	echo "Usage: $0 dir_name copy_amount"
	echo "e.g.: $0 test 100 2"
	echo "copy the specified directory with amount number and start index."
	exit 1
fi

item=$3

#echo $item

while [ $item -le $2 ]
do

if [ -d 0$item ]; then 
	echo "file exists and delete 0$item"
	rm -rf 0$item
elif [ -d $item ]; then
	echo "file exists and delete $item"
	rm -rf $item
fi

if [ $item -le 9 ]; then
	cp -R $1 0$item
	echo "copy 0$item folder"
else
	cp -R $1 $item
	echo "copy $item folder"
fi

item=`expr $item + 1`
echo "run $item times."
done
