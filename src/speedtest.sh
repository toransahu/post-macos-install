#!/usr/bin/env bash
#
# speedtest.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


brew tap teamookla/speedtest
brew update
# Example how to remove conflicting or old versions using brew
# brew uninstall speedtest --force
brew install speedtest --force
