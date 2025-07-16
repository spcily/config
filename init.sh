#!/bin/bash

# This script creates a symlink for the nvim configuration.

# Get the directory of this script to reliably resolve relative paths.
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Create the symlink, overwriting the destination if it exists.
echo "Creating symlink for nvim config..."
mkdir -p "$HOME/.config/nvim" && rm -rf "$HOME/.config/nvim" && ln -sf "$SCRIPT_DIR/.config/nvim" "$HOME/.config/nvim"
echo "Symlink created successfully."

echo "Creating symlink for tmux config..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mkdir -p "$HOME/.config/tmux" && ln -sf "$SCRIPT_DIR/.config/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
echo "Symlink created successfully."
