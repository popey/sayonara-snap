#!/bin/bash

# Sayonara tries to create $SNAP_USER_DATA/.Sayonara/player.db by copying
# from /usr/share/sayonara/player.db - which it fails at because /usr/share/sayonara
# is hard wired. So we pre-fill the db from the copy inside the snap.

if [ ! -f $SNAP_USER_DATA/.Sayonara/player.db ];
then
  echo "No player.db found, will copy and launch"
  mkdir -p $SNAP_USER_DATA/.Sayonara
  cp $SNAP/share/sayonara/player.db $SNAP_USER_DATA/.Sayonara/
  $SNAP/bin/sayonara
else
  echo "player.db found, launching Sayonara"
  $SNAP/bin/sayonara
fi
