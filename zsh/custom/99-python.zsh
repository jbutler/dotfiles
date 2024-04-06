#!/usr/bin/env zsh

# If python2 isn't installed, add python alias for python3
if ! which python >/dev/null 2>&1; then
    alias python=python3
fi

# Available starting in Python 3.13
export PYTHON_HISTORY="$XDG_CACHE_HOME/python/history"
