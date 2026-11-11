#!/bin/bash
ls -al
filenum=0
dirnum=0
for q in `ls -A`
do
if [ -d "$q" ];then
    dirnum=$((dirnum + 1))
else
    filenum=$((filenum + 1))
fi
done
echo "The number of directory is $dirnum"
echo "The number of file is $filenum"

