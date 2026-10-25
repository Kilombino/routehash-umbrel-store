#!/bin/sh
# A node saved on the page is that user's node.
# This package does not point XBT or SHA-256d at a local Knots or Core service.
set -eu

export AUTARKI_DATA=/data
export AUTARKI_ADDR=0.0.0.0:4173

exec /usr/local/bin/autarki
