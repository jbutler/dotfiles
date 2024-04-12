#!/bin/sh

if  command -v go >/dev/null 2>&1; then
    export GOPATH="$XDG_DATA_HOME/go"
    pathmunge "$GOPATH/bin"
fi
