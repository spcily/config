#!/bin/bash

# This script creates a symlink for the nvim configuration.

# Get the directory of this script to reliably resolve relative paths.
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Source (relative to the script) and destination paths
CONFIG_SOURCE="$SCRIPT_DIR/.config/nvim"
CONFIG_DEST="$HOME/.config/nvim"

# Create the symlink, overwriting the destination if it exists.
echo "Creating symlink for nvim config..."
ln -sf "$CONFIG_SOURCE" "$CONFIG_DEST"

echo "Symlink created successfully."
