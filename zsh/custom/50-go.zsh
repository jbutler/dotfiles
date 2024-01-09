#!/usr/bin/env zsh

if [ -f "$HOME/go" ]; then
    export GOPATH="$HOME/go"
    pathmunge "$GOPATH/bin"
fi
