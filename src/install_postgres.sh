#!/usr/bin/env bash
#
# install_postgres.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# Remove old database files (if there was any)
rm -rf /usr/local/var/postgres

# Install the binary
brew install postgresql

# init it
initdb /usr/local/var/postgres

# Start the PostgreSQL server
postgres -D /usr/local/var/postgres

# Create your database
createdb sample_db

# Access the database
psql sample_db
