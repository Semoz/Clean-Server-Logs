#!/bin/sh

echo "==> clean logs begin"
echo " "

sh tools/clean_logs.sh -s 10.10.10.20 -d /tmp

echo "<== clean done!"