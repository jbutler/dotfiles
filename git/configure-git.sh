#!/usr/bin/env zsh

YELLOW='\033[0;33m'
NC='\033[0m' # No Color

gcg() {
    git config --global "$1" "$2"
}

gcg user.name 'Joe Butler'
if [ "$GIT_EMAIL" = "" ]; then
    echo -e "${YELLOW}[WARN] GIT_EMAIL variable is not defined. Will not set git user.email${NC}"
else
    gcg user.email "$GIT_EMAIL"
fi

# Global git ignore
if [ -n "$XDG_CONFIG_HOME" ]; then
    gcg core.excludesfile $XDG_CONFIG_HOME/git/ignore
else
    gcg core.excludesfile $HOME/.gitignore
fi

gcg init.defaultBranch main

# Sort branches by commit date and put them in a column format
gcg column.ui auto
gcg branch.sort -committerdate

# Better diff
gcg diff.algorithm histogram

# Rebase by default when pulling
gcg pull.rebase true

# Update remote references to match what is on the remote
gcg fetch.prune true
gcg fetch.pruneTags true
gcg fetch.all true

# Default git pagination settings are less than ideal
# for things like `git branch` if the size of the output
# is small. Make `less` behave similarly to `cat` if
# the output can fit on one screen, else paginate normally
gcg core.pager "less -FRX"

# Misc
gcg push.autoSetupRemote true

# Aliases
gcg alias.amend "commit --amend --no-edit"
gcg alias.alias "! git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\ =\ /"
gcg alias.nah   "! git reset --hard && git clean -df"
gcg alias.dc    "clean . -xdf --exclude='*.iml'"

# Merge gitignore template files into single global gitignore
cat $(dirname "$0")/gitignore/* > ~/.config/git/ignore
