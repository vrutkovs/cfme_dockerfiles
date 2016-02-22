#!/bin/bash
set -x
set -u

cd /code
pip install -r requirements.txt --no-cache-dir
py.test -v $@
