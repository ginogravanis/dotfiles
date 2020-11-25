#!/bin/sh

picom -b
~/.fehbg &
volume set 30%
bar -t 5 &
redshift &
eval $(ssh-agent)
exec dwm
