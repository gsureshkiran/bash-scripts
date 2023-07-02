#!/bin/bash
tar -cvf /tmp/backup.tar /etc /var
gzip /tmp/backup.tar
find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
then
echo "backup was created"
echo 
echo "archiving the backup"
#scp /tmp/backup.tar.gz root@ip:/path
else
	echo "backup failed"
fi
