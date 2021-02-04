#!/usr/bin/env bash
echo "Hello world!"

# Install git
sudo yum install git -y

# Install Go

# Download the file
sudo curl -O -L "https://golang.org/dl/go1.15.7.linux-amd64.tar.gz"
echo "Download succesfull"
# Extract the file
sudo tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
echo "tar succesfull"
# Move binaries to /usr/local
sudo mv go /usr/local
# Set go path
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "path export succesfull"
# Take changes into account
source ~/.profile

# Install Node.js

# Add NodeSource yum repository
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
# Install Node.js and npm
sudo yum install nodejs -y
node --version
npm --version

# Install vue
npm install -g @vue/cli -y
npm install @vue/cli-service -g

# Build the backend

# Clone the repository
git clone https://github.com/jdmendozaa/vuego-demoapp.git

# Go to the directory in which the .go file is
cd vuego-demoapp/server
# Build the app
go build
echo "Build the go app"
# Move it to the shared folder
cp vuego-demoapp /shared
echo "Moved the app to the shared folder"

# Build the frontend

# Go to the directory
cd ..
cd spa

# Install the dependencies of the project
sudo npm install

# Build the app
sudo npm run build
echo "Vue app build"

# Make the directory into a tar and move it to the shared folder
tar -czf dist.tar.gz dist
cp dist.tar.gz /shared
