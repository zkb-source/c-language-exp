#!/bin/bash
while true
do
echo "+ 加法"
echo "- 减法"
echo "x 乘法"
echo "/ 除法"
echo "q 退出"
echo "Please type your word:(e.g.1 + 2)"
read a b c
case $b in
+) s=$((a+c)); echo " $a + $c = $s" ;;
-) s=$((a-c)); echo " $a - $c = $s" ;;
x) s=$((a*c)); echo " $a x $c = $s" ;;
/) s=$((a/c)); echo " $a / $c = $s" ;;
q) break ;;
esac
done

