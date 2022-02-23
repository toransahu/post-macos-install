#!/usr/bin/env bash
#
# install_miniconda.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

PY_VER=38
CONDA_VER=4.11.0
VERSION=py"$PY_VER"_"$CONDA_VER"

install_using_sh(){
	curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-$VERSION-MacOSX-x86_64.sh | bash -s -- -b -u
}

install_using_pkg(){
	mkdir -p ~/.temp && cd ~/.temp
	curl https://repo.anaconda.com/miniconda/Miniconda3-$VERSION-MacOSX-x86_64.pkg -o Miniconda3-$VERSION-MacOSX-x86_64.pkg
	# sudo installer -pkg Miniconda3-latest-MacOSX-x86_64.pkg -target /
	installer -pkg Miniconda3-$VERSION-MacOSX-x86_64.pkg -target CurrentUserHomeDirectory 
}

install_using_pkg
