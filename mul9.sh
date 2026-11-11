#!/bin/bash
for ((i=1;i<10;i++))
do
    for ((p=1;p<=i;p++))
    do
        echo -ne " $p x $i = $((i*p)) "
    done
    echo
done

