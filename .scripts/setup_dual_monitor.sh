#!/bin/bash
# Get name of HDMI display. I'm assuming primary display stays the same?
DNAME="$(xrandr | grep -Po '(HDMI).+(?= connected)')"

if [ -n $DNAME ]; then
    xrandr --output $DNAME --primary;
    xrandr --output $DNAME --auto --right-of eDP1;
fi
