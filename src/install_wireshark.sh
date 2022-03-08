#!/usr/bin/env bash
#
# install_wireshark.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

VERSION=3.6.2
CPU_MAKE=Intel
CPU_ARCH=64

OUT=wireshark_"$VERSION"_"$CPU_MAKE"_"$CPU_ARCH"
mkdir -p ~/.temp
cd ~/.temp
curl --url https://2.na.dl.wireshark.org/osx/Wireshark%20$VERSION%20$CPU_MAKE%20$CPU_ARCH.dmg -o $OUT.dmg


# install_dmg.sh $OUT
