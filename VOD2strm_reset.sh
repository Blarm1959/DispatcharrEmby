#!/usr/bin/env bash
set -e

# Directory where this script (and VOD2strm.py / VOD2strm_vars.sh) live
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$SCRIPT_DIR"

echo "[VOD2strm_reset] Starting full VOD2strm reset run..."

# One-shot override: force a full cache + folder clear in VOD2strm.py
export CLEAR_CACHE=true

# Run the main exporter (any extra args passed to this script will be forwarded)
./VOD2strm.py "$@"

echo "[VOD2strm_reset] Full VOD2strm reset run completed."
