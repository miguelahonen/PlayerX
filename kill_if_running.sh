#!/bin/bash

PROC_TO_CHECK=$(ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep')

if [ -z "$PROC_TO_CHECK" ]
then
  echo "Nothing to terminate"
else
  kill `ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'`
fi


# https://wiki.videolan.org/Documentation:Command_line/

# vlc -f --loop data/videos/article_0.6

#ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'

#kill `ps ax | grep 'vlc -f --loop data/videos/article' | grep -v 'grep' | sed 's/\s.*$//'`
