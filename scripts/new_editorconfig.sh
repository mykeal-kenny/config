#!/usr/bin/env zsh
# -*- coding: utf-8 -*-

function new_config (){
  echo $editorconf | pbcopy
  echo "Type:\n    config_paste\nto make a new editorconfig file in this repo!"
}

function config_paste () {
  pbpaste >> .editorconfig
}
