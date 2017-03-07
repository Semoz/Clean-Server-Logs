#!/bin/sh

LOG_PATH=logs

if [ ! -d "$LOG_PATH" ]; then
	mkdir $LOG_PATH
fi

sh job_clean_log.sh > $LOG_PATH/clean_logs_$(date +%Y%m%d).log
