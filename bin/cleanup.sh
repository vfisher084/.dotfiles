#!/bin/bash
# Remove .nanorc from the home directory
rm "$HOME/.nanorc"

# Remove the line that sources bashrc_custom from .bashrc
sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"

# Remove the .TRASH directory
rm -rf "$HOME/.TRASH"
