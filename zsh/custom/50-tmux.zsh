#!/usr/bin/env zsh

function tmux-flexattach() {
    session="$1"
    if [[ -n "$TMUX" ]]; then
        tmux_cmd=(tmux switch-client -t)
    else
        tmux_cmd=(tmux attach-session -t)
    fi
    [[ -n "$session" ]] || return 1
    "${tmux_cmd[@]}" "$session"
}

function ta() {
    selected_session_desc="$(tmux list-session | fzf)"
    selected_session="$(echo "$selected_session_desc" | awk -F: '{ print $1 }')"
    tmux-flexattach "$selected_session"
}

function tn() {
    session="$1"
    pushd "$HOME" >& /dev/null
    if [[ -n "$TMUX" ]]; then
        detached_arg='-d'
    else
        detached_arg=''
    fi
    if [[ -n "$session" ]]; then
        tmux new-session $detached_arg -s "$session"
    else
        tmux new-session $detached_arg
    fi
    popd >& /dev/null
    if [[ -n "$detached_arg" ]]; then
        tmux-flexattach "$session"
    fi
}
