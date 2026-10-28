#!/bin/sh

if  command -v pnpm >/dev/null 2>&1; then
    export PNPM_HOME="$XDG_DATA_HOME/pnpm"
    pathmunge "$PNPM_HOME/bin" after
fi
