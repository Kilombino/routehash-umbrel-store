#!/bin/bash

# Blake2b Pool Balance exports.
#
# umbreld sources this under `set -euo pipefail`, including for dependents.
# Nothing here may fail.

# 10.21.21.74 sits clear of RouteHash Gateway (.71), bitcoin-knots (.7),
# lightning (.9), electrs (.10), mempool (.26-.28), and Paul companions (.60-.63).
export APP_BLAKE2B_POOL_BALANCE_IP="10.21.21.74"
