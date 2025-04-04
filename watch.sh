#!/bin/bash

# Watch for changes to any .ipynb in nbs/ and re-export with nbdev
# This version runs in the background and logs output

LOGFILE="nbdev_watch.log"
echo "[nbdev watch] Logging to $LOGFILE"

nohup bash -c 'find nbs -name "*.ipynb" | entr -p nbdev_export' > "$LOGFILE" 2>&1 &
echo "[nbdev watch] Started in background. Use 'ps aux | grep nbdev_export' to locate and kill."
