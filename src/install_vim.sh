#!/usr/bin/env bash
#
# install_vim.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


sudo rm -rf /usr/local/share/vim /usr/local/bin/vim /usr/bin/vim

# always realy on brew install for better compatibility in macos
brew install vim

# cd /tmp
# git clone https://github.com/vim/vim
# cd vim
# git pull && git fetch

# # In case Vim was already installed
# make distclean && make clean
# cd src
# make distclean && make clean
# # cd ..

# # Configure
# LDFLAGS="-rdynamic" ./configure \
#   --enable-multibyte \
#   --enable-python3interp \
#   --with-python3-config-dir=$HOME/.pyenv/versions/3.8.12/lib/python3.8/config-3.8-darwin/ \
#   --enable-cscope \
#   --enable-largefile \
#   --enable-perlinterp=dynamic \
#   --enable-gui=auto \
#   --with-features=huge \
#   --enable-fontset \
#   --disable-netbeans \
#   --with-compiledby="Toran Sahu <toran.sahu@yahoo.com>" \
#   --enable-fail-if-missing 


# # LDFLAGS="-rdynamic" ./configure \
# #   --enable-multibyte \
# #   # --enable-pythoninterp=dynamic \
# #   --enable-python3interp \
# #   --with-python3-config-dir=$HOME/.pyenv/versions/3.8.12/lib/python3.8/config-3.8-darwin/ \
# #   --enable-cscope \
# #   --enable-largefile \
# #   --enable-perlinterp=dynamic \
# #   # --enable-rubyinterp=dynamic \
# #   # --with-ruby-command=/usr/local/bin/ruby \
# #   --enable-gui=auto \
# #   --with-features=huge \
# #   # --with-x \
# #   --enable-fontset \
# #   --disable-netbeans \
# #   --with-compiledby="Toran Sahu <toran.sahu@yahoo.com>" \
# #   --enable-fail-if-missing 

# # Install
# sudo make && sudo make install
