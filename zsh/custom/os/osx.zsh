#!/usr/env/bin zsh

# brew
pathmunge "/opt/homebrew/bin"
LIBRARY_PATH="$(munge "$LIBRARY_PATH" "$(brew --prefix)/lib")"

# java
[ -e "/opt/homebrew/opt/openjdk/bin" ] && pathmunge "/opt/homebrew/opt/openjdk/bin"
