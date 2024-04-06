#!/usr/bin/env zsh

if  command -v go &>/dev/null; then
    export GOPATH="$XDG_DATA_HOME/go"
    pathmunge "$GOPATH/bin"
fi
