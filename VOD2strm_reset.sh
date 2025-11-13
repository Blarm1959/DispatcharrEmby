#!/usr/bin/env bash
set -e

# Directory where the export script and vars live
BASE_DIR="/opt/VOD2strm"

cd "$BASE_DIR"

echo "[VOD2strm_reset] Starting full VOD2strm reset run..."

# One-shot override: force a full cache + folder clear in VOD2strm.py
export CLEAR_CACHE=true

# Run the main exporter (any extra args passed to this script will be forwarded)
./VOD2strm.py "$@"

echo "[VOD2strm_reset] Full VOD2strm reset run completed."
