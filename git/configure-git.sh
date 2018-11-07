#!/bin/bash

gcg='git config --global'

$gcg user.name 'Joe Butler'

# Disable obnoxious output pagination by setting
# the default pager to the `cat` command
$gcg core.pager cat
