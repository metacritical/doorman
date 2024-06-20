#!/bin/bash

set -u

ARCH=$(uname -m)
OS=$(uname)

REPO="https://github.com/metacritical/doorman"
LATEST_RELEASE_URL="$REPO/releases/download/v0.0.2/doorman"
INSTALL_DIR="/usr/local/bin"

echo "Installing doorman..."
sudo curl -L "$LATEST_RELEASE_URL" -o "${INSTALL_DIR}/doorman" && chmod +x "${INSTALL_DIR}/doorman"
