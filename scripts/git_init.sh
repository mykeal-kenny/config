#!/usr/bin/env zsh
# -*- coding: utf-8 -*-


# Does Something
function git_init(){
    git init &&\
    hub create
}

function git_init_finish () {
    git add . &&\
    git commit -m "INIT"
}
