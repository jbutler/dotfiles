#!/usr/env/bin zsh

# brew
pathmunge "/opt/homebrew/bin"
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

# java
pathmunge "/opt/homebrew/opt/openjdk/bin"
