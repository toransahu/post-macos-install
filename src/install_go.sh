#! /bin/sh
#
# install_go.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

VERSION=1.21.3

# uninstall existing version
sudo rm -rf /usr/local/go

mkdir -p ~/.temp
cd ~/.temp
curl https://dl.google.com/go/go$VERSION.darwin-amd64.tar.gz --output go$VERSION.darwin-amd64.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.darwin-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
# source ~/.profile
# echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

# ship with debugger
# go install github.com/go-delve/delve/cmd/dlv@latest

# for personal repos
# git config --global url."git@github.com:".insteadOf "https://github.com/"
