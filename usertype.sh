#!/bin/bash
case $UID in
0) echo this is root;;
*) echo this is ordinary public user;;
esac

