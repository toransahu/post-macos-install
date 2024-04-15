#!/usr/bin/env bash
#
# install_flutter.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# ref: https://docs.flutter.dev/get-started/install/macos

mkdir -p ~/.temp cd ~/.temp
curl -o https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.3.7-stable.zip
cd ~/development
unzip ~/.temp/flutter_macos_3.3.7-stable.zip

