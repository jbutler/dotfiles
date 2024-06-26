#!/bin/sh

if which nvim >/dev/null 2>&1; then
    nvim_path="$(which nvim)"
fi

if which vim >/dev/null 2>&1; then
    vim_path="$(which vim 2>/dev/null)"
fi

if [ -n "$nvim_path" ]; then
    alias vim="$nvim_path"
    export EDITOR="$nvim_path"
elif [ -n "$vim_path" ]; then
    export EDITOR="$vim_path"
fi

export VISUAL="$EDITOR"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
