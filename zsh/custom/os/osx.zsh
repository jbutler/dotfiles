#!/bin/sh

# brew
pathmunge "/opt/homebrew/bin"
LIBRARY_PATH="$(munge "$LIBRARY_PATH" "$(brew --prefix)/lib")"
export HOMEBREW_NO_ASK=1

# java
[ -e "/opt/homebrew/opt/openjdk/bin" ] && pathmunge "/opt/homebrew/opt/openjdk/bin"
