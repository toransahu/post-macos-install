#!/usr/bin/env bash
#
# install_pyenv.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


which xcode-select || xcode-select --install && echo "Successfully installed Xcode Command Line Tools" || echo "Failed to (re)install Xcode Command Line Tools"

brew install openssl readline sqlite3 xz zlib

