#!/bin/bash
MY_DIRECTORIES="/home /var/log"
echo "Top Ten Disk Space Usage"
for DIR in $MY_DIRECTORIES
do
echo "The $DIR Directory:"
sudo du -S $DIR 2>/dev/null|
sort -rn |
sed '{11, $D; =}' |
sed 'N; s/\n/ /'
done
exit
