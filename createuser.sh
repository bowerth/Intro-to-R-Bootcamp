#!/bin/bash

# this script creates 14 new users and adds write permission
# ...
# training07:x:1007:1000::/home/training07:/bin/bash
# training08:x:1008:1000::/home/training08:/bin/bash
# ...

# group id
gid=1000
zipfile=/tmp/bootcamp.zip

for i in {01..14}
do
	echo training$i:train$i:10$i:$gid::/home/training$i:/bin/bash > newusers-tmp.txt
	newusers newusers-tmp.txt
	unzip $zipfile -d /home/training$i/
	chown -R training$i: /home/training$i
done

rm newusers-tmp.txt
