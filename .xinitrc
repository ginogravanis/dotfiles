#!/bin/sh

picom -b --config $HOME/.config/picom.conf
~/.fehbg &
volume set 30%
bar -t 5 &
redshift &
eval $(ssh-agent)
exec dwm
