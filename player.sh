#!/bin/bash

#/media/pi/Nano
#/media/pi/Transcend
#vlc /media/pi/MPC/m5

RANGE=10

while :
do
	if [ -d "/media/pi/Nano" ] && ! ["$(pidof vlc)" gt "0"]; 
	then
		$(vlc /media/pi/MPC/m1)
	fi
	if [ -d "/media/pi/Transcend" ] && ! ["$(pidof vlc)" gt "0"]; 
	then
		$(vlc /media/pi/MPC/m2)
	fi

	for i in $(seq 1 $RANGE); 
		do 
			if [ -d "/media/pi/t$i" ] && ! ["$(pidof vlc)" gt "0"]; 
			then
				$(vlc /media/pi/MPC/m$i)
				echo "Order number"
				echo $i;
				echo "Order number ends.."
			fi
		done
done



# https://wiki.videolan.org/Documentation:Command_line/

# vlc -f --loop data/videos/article_0.6

#ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'

#kill `ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'`
