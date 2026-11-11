#!/bin/bash
if [ ! -f ~/minda ]
then
    touch ~/minda
fi
while true
do
echo "a 添加用户"
echo "d 删除用户"
echo "l 查看全部"
echo "e 编辑用户"
echo "q 退出"
read b
case $b in
a) echo "Please type your name :"
read name
echo "Please type your number :"
read number
echo "$name $number" >> ~/minda;;
d) echo "Please type which name do you want to del:"
read name
grep -v "^$name " ~/minda > tmp.tmp
mv tmp.tmp ~/minda;;
l) cat ~/minda;;
e) echo "Please type which name do you want to edit:"
read name
grep -v "^$name " ~/minda > tmp.tmp
mv tmp.tmp ~/minda
echo "Please type your new name :"
read name
echo "Please type your new number :"
read number
echo "$name $number" >> ~/minda;;
q) exit;;
esac
done

