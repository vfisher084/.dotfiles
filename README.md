# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.
## bashrc custom
The custom bash configuration file, including environment variables, aliases, and functions.
## linux.sh
This script checks if the system is Linux, creates the '.TRASH' directory, backs up the existing '.nanorc', and configures the shell by copying the 'nanorc' and 'bashrc' files.
## cleanup.sh
This script undoes the changes made by 'linux.sh', including removing the '.nanorc' file, restoring the '.bashrc', and removing the '.TRASH' directory.
## Makefile
Automates running the 'linux.sh' and 'cleanup.sh' scripts.
