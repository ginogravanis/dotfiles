#!/bin/sh

pkill picom
picom -b --backend glx --vsync &
~/.fehbg &
volume set 30%
bar -t 5 &
redshift &
dropbox &
eval $(ssh-agent)
exec dwm
