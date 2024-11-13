#!/usr/bin/env bash
#
# install_gnu_coreutils.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep
# safely do
# export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
