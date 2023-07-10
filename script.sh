#!/bin/bash
ls -la
if [ $? -eq 0 ];then
echo command is correct
else
  exit 1
fi
whoami
if [ $? -eq 0 ];then
        echo command is correct
else
        echo command is not correct
        exit 1
fi
pwd
if [ $? -eq 0 ];then
        echo command is correct
	echo "numer of arguments: $#"

else
        echo command is not correct
        exit 1
fi
echo "exit status code: $?"
echo "numer of arguments: $#"
echo "first word of cmd: $0"
echo "first argument: $*"

echo $*
echo $0
