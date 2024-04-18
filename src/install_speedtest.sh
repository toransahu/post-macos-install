#!/usr/bin/env bash
#
# install_speedtest.sh
# Copyright (C) 2024 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# ref: https://www.speedtest.net/apps/cli
brew tap teamookla/speedtest
brew update
# Example how to remove conflicting or old versions using brew
# brew uninstall speedtest --force
# brew uninstall speedtest-cli --force
brew install speedtest --force
