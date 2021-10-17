#!/bin/bash

RANGE=10

while :
do
	for i in $(seq 1 $RANGE); 
		do 
			if [ -d "/media/pi/Nano" ] || 
			[ -d "/media/pi/Transcend" ] ||
			[ -d "/media/pi/t$i" ] ;
			then
				echo "Nothing to terminate"
			else
				kill $(pidof vlc) &>/dev/null
			fi
		done
	sleep 1
done



# https://wiki.videolan.org/Documentation:Command_line/

# vlc -f --loop data/videos/article_0.6

#ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'

#kill `ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'`
