#!/bin/bash
set -x
set -u

cd /code
pip install -r requirements.txt --no-cache-dir

# Colored text
export TERM=xterm
exec py.test -v $@
