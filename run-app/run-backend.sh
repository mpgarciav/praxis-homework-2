#!/usr/bin/env bash
echo "Hello from backend!"

echo "export PORT=4001" >>  /home/vagrant/.profile
source  /home/vagrant/.profile
cd /shared
nohup ./vuego-demoapp > output.out 2>&1 &
ps -aux