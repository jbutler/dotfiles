#!/usr/env/bin zsh

# brew
pathmunge "/opt/homebrew/bin"
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

# java
[[ -e "/opt/homebrew/opt/openjdk/bin" ]] && pathmunge "/opt/homebrew/opt/openjdk/bin"
