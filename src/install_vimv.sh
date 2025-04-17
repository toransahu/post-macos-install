#!/usr/bin/env bash
#
# install_vimv.sh
# Copyright (C) 2025 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# For the current user
curl https://raw.githubusercontent.com/thameera/vimv/master/vimv > ~/.local/bin/vimv && chmod +755 ~/.local/bin/vimv
# For the current system
sudo PREFIX=/usr/local make install
