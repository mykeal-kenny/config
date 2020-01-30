#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
. "./git_init.sh"
. "./new_editorconfig.sh"

function new_repo () {
    echo "INITIALIZING REPO!\n\n"
    mkdir -p $1 &&\
    cd $_ && echo $1 >> README.md &&\
    git_init && new_config && config_paste &&\
    git_init_finish &&\
    git push -u origin master
    echo "Finished!\nNow go on and add some stuff!\n"
}
