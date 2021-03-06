#!/usr/bin/env bash

alias h='git log --oneline --decorate --graph'

# create new branch tagging the start
# nb = new branch
nb () {
    git checkout -b "$1" && git tag "begin_$1" &&
    echo "Branch $1 ready, enjoy it!"
}

# prepare the branch for PR, squashing all commits from the initial tag in one
# ppr = Prepare Pull Request
ppr () {
    echo "Preparing branch for Pull Request..."
    git reset --soft "begin_$1"~1 &&
    git add . &&
    git commit -m "$2" &&
    git tag --delete "begin_$1" &&
    git rebase master &&
    echo "Your branch is ready to Pull Request. Perform the push to remote repository whenever you want. Thanks!"
}
