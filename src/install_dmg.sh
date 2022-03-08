#!/usr/bin/env bash
#
# install_dmg.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# dmg file
DMG=  # Wireshark 3.6.2 Intel 64.dmg
VOL_DIR=  # Wireshark 3.6.2/
APP_DIR=  # Wireshark.app/

# mount the disk image
sudo hdiutil attach $DMG

# enter into the mount volume
cd /Volumes/$VOL_DIR

# copy entire .app folder to /Applications folder
sudo cp -rf $APP.app /Applications

# unmount the disk image:
sudo hdiutil detach /Volumes/$VOL_DIR


