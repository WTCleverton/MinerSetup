#!/bin/bash
DEFAULT_DELAY=0
if [ "x$1" = "x" -o "x$1" = "xnone" ]; then
   DELAY=$DEFAULT_DELAY
else
   DELAY=$1
fi
sleep $DELAY
cd ~/
sudo -c "screen -dmS ethm ./mine.sh"



sudo nano .bashrc
Scroll to the end of the file, and then add this text above the line that reads “# enable programmable completion…”
alias miner='screen -x ethm'
