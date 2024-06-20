#!/bin/bash

set -u

ARCH=$(uname -m)
OS=$(uname)

REPO="https://github.com/metacritical/doorman"
LATEST_RELEASE_URL="$REPO/releases/download/v0.0.2/doorman"
INSTALL_DIR="/usr/local/bin"

echo "Installing doorman..."
curl -L "$LATEST_RELEASE_URL" > doorman 
chmod +x doorman
sudo mv doorman "${INSTALL_DIR}/doorman"
