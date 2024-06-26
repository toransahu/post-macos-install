#!/usr/bin/env sh

# prereq
brew install pkg-config utf8proc

git clone https://github.com/tmux/tmux.git /tmp/tmux || (cd /tmp/tmux && git pull origin master)

cd /tmp/tmux

git checkout master

sh autogen.sh

./configure --enable-utf8proc && make

sudo make install

