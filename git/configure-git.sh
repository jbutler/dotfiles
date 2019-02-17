#!/bin/bash

# This is a baseline gitconfig. Things like email
# should be added in separate machine specific files

gcg='git config --global'

$gcg user.name 'Joe Butler'

# Default git pagination settings are less than ideal
# for things like `git branch` if the size of the output
# is small. Make `less` behave similarly to `cat` if
# the output can fit on one screen, else paginate normally
$gcg core.pager "less -FRX"

# Store github access token on the filesystem
$gcg credential.helper store
