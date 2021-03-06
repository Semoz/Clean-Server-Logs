#!/bin/sh

##--define param
LOG_PATH="/tmp"                 #default server logs path
LOG_DATE=180                    #day. default file expire
SERVER_ADDRESS=                 #server ip address
SERVER_PORT=22                  #server port
REG_NAME=*                      #file name

while getopts n:s:p:d:t: opt;
do
    case $opt in
        s)  
            SERVER_ADDRESS=$OPTARG
            ;;
        p)  
            SERVER_PORT=$OPTARG
            ;;
        d)  
            LOG_PATH=$OPTARG
            ;;
        t)  
            LOG_DATE=$OPTARG
            ;;
        n)  
            REG_NAME=$OPTARG
            ;;
        :)
            echo "-$OPTARG needs an argument"
            ;;
        *)  
            echo "-$opt not recognized"
            ;;
    esac
done

if [ ! "$SERVER_ADDRESS" ]; then
    echo "ADDRESS IS NULL"
    exit 0
fi

echo "###-- clean logs on $SERVER_ADDRESS PATH:$LOG_PATH $LOG_DATE DAY AGO"

ssh -p $SERVER_PORT $SERVER_ADDRESS "find $LOG_PATH -mtime +$LOG_DATE -name \"$REG_NAME\" -print -exec rm -rf {} \;"

#debug
#echo "LOG_PATH:$LOG_PATH"
#echo "LOG_DATE:$LOG_DATE"
#echo "SERVER_ADDRESS:$SERVER_ADDRESS"
#echo "SERVER_PORT:$SERVER_PORT"
#echo "REG_NAME:$REG_NAME"
#ssh -p $SERVER_PORT $SERVER_ADDRESS "find $LOG_PATH -mtime +$LOG_DATE -name \"$REG_NAME\" -exec echo {} \;"

sleep 1

echo "###-- done!"
echo " "