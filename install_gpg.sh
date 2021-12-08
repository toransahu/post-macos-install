#!/bin/sh
brew install gpg2 gnupg pinentry-mac

# Make the directory
mkdir ~/.gnupg

# This tells gpg to use the gpg-agent
echo 'use-agent' > ~/.gnupg/gpg.conf

# Append the following to your ~/.bash_profile or ~/.bashrc or ~/.zshrc
export GPG_TTY=$(tty)

# Restart your Terminal or source your ~/.*rc file

# change permission
chmod 700 ~/.gnupg

# import/create gpg key

# List your keys
gpg -k

