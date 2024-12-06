#!/bin/bash
# This script sets up the Linux environment for the user.

# Check if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
  echo "Error: This script is intended for Linux systems only." >> linuxsetup.log
  exit 1
fi

# Create the .TRASH directory in the home directory if it doesn't exist
if [ ! -d "$HOME/.TRASH" ]; then
  mkdir "$HOME/.TRASH"
  echo "Created .TRASH directory in home directory." >> linuxsetup.log
fi

# If the .nanorc file exists, rename it to .bup_nanorc
if [ -f "$HOME/.nanorc" ]; then
  mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
  echo "Renamed existing .nanorc to .bup_nanorc." >> linuxsetup.log
fi

# Copy the .nanorc file from ./etc/nanorc to the user's home directory
cp ./etc/.nanorc "$HOME/.nanorc"
echo "Copied ./etc/nanorc to $HOME/.nanorc." >> linuxsetup.log

# Append the source command to .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
echo "Added 'source ~/.dotfiles/etc/bashrc_custom' to .bashrc." >> linuxsetup.log
