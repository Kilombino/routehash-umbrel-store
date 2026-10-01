#!/bin/bash

# RouteHash Gateway exports.
#
# umbreld sources this under `set -euo pipefail`, including for dependents.
# Nothing here may fail.

# 10.21.21.71 is clear of official bitcoin-knots (.7), lightning (.9), electrs
# (.10), mempool (.26-.28), and Paul companion apps (.60-.63).
export APP_ROUTEHASH_GATEWAY_IP="10.21.21.71"
export APP_ROUTEHASH_GATEWAY_STRATUM_PORT="23339"
