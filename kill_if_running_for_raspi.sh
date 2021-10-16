#!/bin/bash

while :
do
	if [ -d "/media/mijuahon/Music" ]; 
	then
  		echo "Nothing to terminate"
	else
		kill $(pidof vlc) &>/dev/null
	fi
	sleep 1
done



# https://wiki.videolan.org/Documentation:Command_line/

# vlc -f --loop data/videos/article_0.6

#ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'

#kill `ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'`
