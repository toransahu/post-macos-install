#!/usr/bin/env bash
#
# install_pyenv.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#



rm -rf ~/.pyenv
# install pre
curl https://pyenv.run | bash
#restart shell
exec $SHELL
#pdatepyenv
pyenv update
