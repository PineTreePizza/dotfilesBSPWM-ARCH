#!/bin/bash

lock_file="/tmp/togglebar_lockfile"

if [ -e "$lock_file" ]; then
		echo "Script is already running. Exiting."
		echo "5" > "$lock_file"
    exit 1
fi

echo "5" > "$lock_file"

hideIt.sh --name polybar-bg_eDP --toggle
hideIt.sh --name polybar-bgxwindowbar_eDP --toggle

remaining_seconds=$(cat "$lock_file")

while [ "$remaining_seconds" -gt 0 ]; do
    sleep 1
		lock_data=$(cat "$lock_file")
		remaining_seconds=$((lock_data - 1))
    echo "$remaining_seconds" > "$lock_file"
done

rm "$lock_file"

hideIt.sh --name polybar-bg_eDP --toggle
hideIt.sh --name polybar-bgxwindowbar_eDP --toggle
