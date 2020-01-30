#!/usr/bin/env zsh
# -*- coding: utf-8 -*-


# Simplifies Git operations
function quick_git (){
    echo "QUICK GIT!"
    git add . &&\
    git commit -m $1 &&\
    git push
}
