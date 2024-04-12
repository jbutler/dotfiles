#!/usr/bin/env zsh

munge() {
    if [ -z "$1" ]; then
        echo "$2"
    elif ! echo "$1" | grep -E -q "(^|:)$2($|:)"; then
        if [ "$3" = "after" ] ; then
            echo "$1:$2"
        else
            echo "$2:$1"
        fi
    else
        echo "$1"
    fi
}

pathmunge() {
    PATH=$(munge "$PATH" "$1" "$2")
}

pathmunge_reorder() {
    PATH="$(echo "$PATH" | sed -E -e "s#(^|:)$1($|:)#:#" | sed -E -e 's/(^:|:$)//')"
    pathmunge "$@"
}

# Configure a basic path if there is not one. Should be fine for most use cases.
[ -z "$PATH" ] && PATH="/usr/bin:/usr/sbin:/bin:/sbin"
