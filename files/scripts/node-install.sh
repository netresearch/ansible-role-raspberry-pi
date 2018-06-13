#!/bin/bash

## Check for versions compiled with ARM at http://nodejs.org/dist/
## Inspired by https://gist.github.com/myrtleTree33/8080843
## Fill in the Node Version here:

##########################################################################

NODE_VERSION="v9.8.0"

##########################################################################


# Make a new dir where you'll put the binary
mkdir -p /opt/node

# Get it
wget http://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}-linux-armv7l.tar.gz -O nodejs.tar.gz

# unpack
tar xvzf nodejs.tar.gz

# Copy to the dir you made as the first step
cp -r node-${NODE_VERSION}-linux-armv7l/* /opt/node

# Add node to your path so you can call it with just "node"
# Add these lines to the file you opened

PROFILE_TEXT="
PATH=\$PATH:/opt/node/bin
export PATH
"
echo "$PROFILE_TEXT" >> ~/.bash_profile
source ~/.bash_profile

# linking node
ln -sf /opt/node/bin/node /usr/local/bin/node
ln -sf /opt/node/lib/node /usr/local/lib/node
ln -sf /opt/node/bin/npm /usr/local/bin/npm
ln -sf /opt/node/bin/node-waf /usr/local/bin/node-waf

# Test
node -v
npm -v
