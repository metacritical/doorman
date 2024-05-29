#!/bin/bash

set -u

ARCH=$(uname -m)
OS=$(uname)

REPO="https://github.com/metacritical/doormap"
LATEST_RELEASE_URL="$REPO/releases/download/0.0.1/doorman"
INSTALL_DIR="/usr/local/bin"

echo "Installing killport..."
curl -L "$LATEST_RELEASE_URL" -o "${INSTALL_DIR}/doorman"
chmod +x "${INSTALL_DIR}/doorman"
