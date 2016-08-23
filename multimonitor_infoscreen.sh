#!/bin/bash

# Author: Marius Pfeffer (neo0x3d)
# Version: 1.0 (initial release)
# License: MIT

# Setup:
# edit this file for the needed count of screens
# generate Firefox profiles (ffp1...ffpx)
# set URL and xdotool search string
# set POS_X

# delay to let firefox start up each window
STARTDELAY=3
# close all firefox windows upon script start
killall firefox


##########
# Screen 1
##########
firefox -no-remote -p ffp1 -width 500 -height 500 https://www.google.at &
sleep $STARTDELAY
WIDS=`xdotool search --name "Google"`

for x in $WIDS; do
	LAST_WID=$x
done

xdotool windowmove $LAST_WID $POS_X 0
xdotool windowactivate $LAST_WID
xdotool key --clearmodifiers F11


##########
# Screen 2
##########
firefox -no-remote -p ffp2 -width 500 -height 500 https://www.reddit.com/ &
sleep $STARTDELAY
WIDS=`xdotool search --name "reddit"`

for x in $WIDS; do
	LAST_WID=$x
done

xdotool windowmove $LAST_WID 1280 0
xdotool windowactivate $LAST_WID
xdotool key --clearmodifiers F11


##########
# Screen 3
##########
firefox -no-remote -p ffp3 -width 500 -height 500 https://slashdot.org/ &
sleep $STARTDELAY
WIDS=`xdotool search --name "Slashdot"`

for x in $WIDS; do
	LAST_WID=$x
done

xdotool windowmove $LAST_WID 2560 0
xdotool windowactivate $LAST_WID
xdotool key --clearmodifiers F11


##########
# Screen 4
##########
firefox -no-remote -p ffp4 -width 500 -height 500 https://blog.fefe.de/ &
sleep $STARTDELAY
WIDS=`xdotool search --name "Fefes Blog"`

for x in $WIDS; do
	LAST_WID=$x
done

xdotool windowmove $LAST_WID 3840 0
xdotool windowactivate $LAST_WID
xdotool key --clearmodifiers F11
