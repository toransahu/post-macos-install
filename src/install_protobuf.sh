#!/usr/bin/env bash
#
# install_protobuf.sh
# Copyright (C) 2024 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# Download and unpack protobuf compiler source code
PROTOBUF_RELEASES_URL="https://github.com/protocolbuffers/protobuf/releases/download"
TARGET_PROTOBUF_VERSION=$(pip show protobuf | grep Version | sed -r 's/Version: (.*)/\1/') # get the version of the (broken) protobuf wheel currently installed
PROTOC_SRC_ARCHIVE="protobuf-cpp-${TARGET_PROTOBUF_VERSION}.tar.gz"
curl -sSL "${PROTOBUF_RELEASES_URL}/v${TARGET_PROTOBUF_VERSION}/${PROTOC_SRC_ARCHIVE}" | tar -C /tmp -xzf -

# Build protobuf compiler from source (this will take a while)
#   see: https://github.com/protocolbuffers/protobuf/blob/master/src/README.md
PROTOC_SRC_PATH="/tmp/protobuf-${TARGET_PROTOBUF_VERSION}" && \
pushd "${PROTOC_SRC_PATH}" && \
./configure && \
make -j8 && \
make check && \
sudo make install && \
popd && \
rm -rf "${PROTOC_SRC_PATH}" # Clean src/build files 

# In your virtual environment:
. .venv/bin/activate
INSTALL_PREFIX_PATH="/usr/local" && \
export CFLAGS="-I${INSTALL_PREFIX_PATH}/include" && \
export LDFLAGS="-L${INSTALL_PREFIX_PATH}/lib" && \
pip install protobuf=="${TARGET_PROTOBUF_VERSION}" --force-reinstall --no-deps --install-option="--cpp_implementation"
