#!/bin/sh

#clean_logs.sh
#-s server address
#-p server port
#-d server log path
#-t file expire time of day
#-n file filter

echo "==> clean logs begin"
echo " "

sh tools/clean_logs.sh -s 10.10.10.20 -d /tmp

echo "<== clean done!"