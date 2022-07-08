#!/usr/bin/env bash
#
# install_java.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# 1. install jenv to manage diff. java version
brew install jenv

# 2. install openjdk java for latest
# brew install openjdk

# for more specific version use:
brew install openjdk@17

# 3. symlink for discovery
ln -s /usr/local/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk

# check all java_home paths
/usr/libexec/java_home -V

# 4. add java to jenv
jenv add /Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home

# 5. set the global java version
jenv global 17.0.3

# optional: set the desired java version locally/temporarily
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home
# export PATH=$JAVA_HOME/bin:$PATH
