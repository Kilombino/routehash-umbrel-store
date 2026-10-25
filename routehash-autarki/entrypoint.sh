#!/bin/sh
# On StartOS, point the page at that server's Knots when the cookie is mounted.
# Umbrel does not mount Knots or Bitcoin Core. XBT then uses Autarki's server.
# The cookie password is not printed.
set -eu

export AUTARKI_DATA=/data
export AUTARKI_ADDR=0.0.0.0:4173

url=${AUTARKI_KNOTS_RPC:-}
unset AUTARKI_KNOTS_RPC || true
cookie=/mnt/knots/.cookie

if [ -n "$url" ] && [ -f "$cookie" ]; then
  line=$(head -n 1 "$cookie" | tr -d '\r')
  user=${line%%:*}
  pass=${line#*:}
  case $url in
    http://*) ;;
    *) url="" ;;
  esac
  if [ -n "$url" ] && [ -n "$user" ] && [ -n "$pass" ] && [ "$user" != "$pass" ]; then
    export AUTARKI_XBT_RPC_URL="$url"
    export AUTARKI_XBT_RPC_USER="$user"
    export AUTARKI_XBT_RPC_PASSWORD="$pass"
  fi
fi

exec /usr/local/bin/autarki
