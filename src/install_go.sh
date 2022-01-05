#! /bin/sh
#
# install_go.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

VERSION=1.17.4

cd /tmp
curl https://dl.google.com/go/go$VERSION.darwin-amd64.pkg -o go.pkg
installer -pkg go.pkg -target CurrentUserHomeDirectory

export PATH=$PATH:$HOME/usr/local/go/bin

# export PATH=$PATH:/usr/local/go/bin
# source ~/.profile
# echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

# for personal repos
# git config --global url."git@github.com:".insteadOf "https://github.com/"
