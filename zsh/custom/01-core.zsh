#!/bin/sh

munge() {
    if [ -z "$1" ]; then
        # Existing path is empty, just return the new segment
        echo "$2"
    else
        # Add colons around $1 (current PATH) for easier matching
        case ":$1:" in
            *:"$2":*)
                # New segment is already present, do nothing
                echo "$1"
                ;;
            *)
                # New segment is not present, add it
                if [ "$3" = "after" ]; then
                    echo "$1:$2"
                else
                    echo "$2:$1"
                fi
                ;;
        esac
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
