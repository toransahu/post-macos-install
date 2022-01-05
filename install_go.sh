#! /bin/sh
#
# install_go.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

VERSION=1.17.5

# uninstall existing version
rm -rf /usr/local/go

mkdir -p ~/.temp
cd ~/.temp
curl https://dl.google.com/go/go$VERSION.darwin-amd64.tar.gz --output go$VERSION.darwin-amd64.tar.gz
tar -C /usr/local -xzf go$VERSION.darwin-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
# source ~/.profile
# echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

# for personal repos
git config --global url."git@github.com:".insteadOf "https://github.com/"
