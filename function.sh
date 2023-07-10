#!/bin/bash
VALIDATE() {
	if [ $1 -ne 0 ];then
		echo "$2 ... FAILURE"
		exit 1
	else
		echo "$2 ... pass"
	fi
}
free
VALIDATE $? "free command pass"
df -h
VALIDATE $? "df -h command pass"

#### s -la
##### VALIDATE $? " s -la is pass"

touch test.txt
VALIDATE $? "touch is pass"
