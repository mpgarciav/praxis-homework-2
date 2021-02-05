#!/usr/bin/env bash
echo "Hello from backend!"

sudo echo "export PORT=4001" >>  /home/vagrant/.bashrc
source  /home/vagrant/.bashrc
cd /shared
nohup ./vuego-demoapp > output.out 2>&1 &
ps -aux