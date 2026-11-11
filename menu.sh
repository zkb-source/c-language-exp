#!/bin/bash
while true
do
echo "List Directory……......l "
echo "Change Directory........c "
echo "Edit File.......................e "
echo "Remove File.................r "
echo "Exit Menu....................q "
read ch
case $ch in
l) ls -l ;;
c) echo Enter target directory; read direc; cd "$direc" ;;
e) echo Enter file name; read file; vi "$file" ;;
r) echo Enter file name; read file; rm "$file" ;;
q|Q) echo Goodbye; break;;
*) echo illegal Option ;;
esac
done

