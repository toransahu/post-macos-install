#!/usr/bin/env sh

rm -fr /tmp/tmux
    
git clone https://github.com/tmux/tmux.git /tmp/tmux

cd /tmp/tmux

git checkout master

sh autogen.sh

./configure && make

sudo make install

cd -

rm -fr /tmp/tmux

