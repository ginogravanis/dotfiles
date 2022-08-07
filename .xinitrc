#!/bin/sh

~/.fehbg &
bar -t 5 &
eval $(ssh-agent)
exec dwm
