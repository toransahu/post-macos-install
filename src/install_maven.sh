#!/usr/bin/env bash
#
# install_maven.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

VERSION=3.6.3
curl https://dlcdn.apache.org/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.tar.gz -o apache-maven.tar.gz

tar xzvf apache-maven.tar.gz
mv apache-maven-$VERSION ~/

export PATH=$HOME/apache-maven-$VERSION/bin:$PATH

# validate
echo $JAVA_HOME
mvn --version
