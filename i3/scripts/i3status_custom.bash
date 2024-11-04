#!/bin/bash
# shell script to display current brightness in i3status

i3status -c $HOME/.config/i3/i3status.conf | while :
do
	read line
	echo "💡 ($($HOME/.config/i3/scripts/get_active_monitor.bash)) $($HOME/.config/i3/scripts/bright.bash | awk '{print $NF}') | $line" || exit 1
done
