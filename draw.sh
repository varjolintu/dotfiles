#!/usr/bin/env bash
read -r X Y W H G ID < <(slop -f "%x %y %w %h %g %i" -b 1 -t 0 -q)
# Width and Height in px need to be converted to columns/rows
# To get these magic values, make a fullscreen st, and divide your screen width by ${tput cols}, height by ${tput lines} 
let "W = W / 6"
let "H = H / 12"
g=${W}x${H}+${X}+${Y}
echo $g #debugging
urxvt -g $g -name floating
