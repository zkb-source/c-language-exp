#!/bin/bash
n=1
while [ $n -gt 0 ]
do
echo "xinjian------------------1"
echo "denglu-------------------2"
echo "exit---------------------3"
read n
case $n in
1) echo "username"; read name
if [ -f ~/"$name" ]
then
echo "same username"
else
echo "passwd"
read passwd
echo "$passwd" > ~/"$name"
fi;;
2) echo "username"; read name1
if [ -f ~/"$name1" ]
then
echo "passwd"
read passwd1
pwdread=$(cat ~/"$name1")
if [ "$passwd1" = "$pwdread" ]
then
echo "success"
break
else
echo "passwd wrong"
fi
else
echo "yonghu wrong"
fi;;
3) break;;
esac
done

