#!/bin/bash
a=~/pkglist
if [ -f $a ]
then
    cat $a
else
    dpkg -l > $a
fi
i
