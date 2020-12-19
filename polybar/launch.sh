#!/bin/bash

# Kill all running instances
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar $1 &

echo "Polybar launched..."
