#!/bin/bash

YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Baseline gitconfig
gcg='git config --global'

$gcg user.name 'Joe Butler'
if [ "$GIT_EMAIL" = "" ];
then
    echo -e "${YELLOW}[WARN] GIT_EMAIL variable is not defined. Will not set git user.email${NC}"
else
    $gcg user.email $GIT_EMAIL
fi

# Default git pagination settings are less than ideal
# for things like `git branch` if the size of the output
# is small. Make `less` behave similarly to `cat` if
# the output can fit on one screen, else paginate normally
$gcg core.pager "less -FRX"

# Store github access token on the filesystem
$gcg credential.helper store

# Global git ignore
$gcg core.excludesfile ~/.gitignore_global

# Solve racial inequality
$gcg init.defaultBranch main

#Misc
$gcg push.autoSetupRemote true

# Aliases
$gcg alias.amend "commit --amend --no-edit"
$gcg alias.alias "! git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\ =\ /"
$gcg alias.nah   "!git reset --hard && git clean -df"
