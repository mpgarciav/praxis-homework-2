#!/usr/bin/env bash
echo "Hello from backend!"

# Export the environment variable
sudo echo "export PORT=4001" >>  /home/vagrant/.bashrc
source  /home/vagrant/.bashrc

# Go to the directory in which the app is
cd /shared

# Run the process on background
nohup ./vuego-demoapp > output.out 2>&1 &
ps -aux