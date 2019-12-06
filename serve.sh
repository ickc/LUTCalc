#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
python3 -m http.server 8918 &

"/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary" --app=http://0.0.0.0:8918

wait
