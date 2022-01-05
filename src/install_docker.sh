#!/usr/bin/env bash
#
# install_docker.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# The docker setup does not work as in a normal Linux machine, on a Mac it is much more complicated. But it can be done!
brew install --cask docker virtualbox 
brew install docker-machine
docker-machine create --driver virtualbox default
docker-machine restart
eval "$(docker-machine env default)" # This might throw an TSI connection error. In that case run docker-machine regenerate-certs default
(docker-machine restart) # maybe needed
docker run hello-world # validate
