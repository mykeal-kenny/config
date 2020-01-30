#!/usr/bin/env zsh
# -*- coding: utf-8 -*-

function source_scripts (){
arr=($(find scripts -type f -name "*.sh" -prune))
  for i in $arr;do
  . "$i"
  done
}

# template vars
editorconf=( $(cat "templates/temp_editorconfig.txt") )
scriptconf=( $(cat "templates/temp_script.txt") )
config_list=($(ls -R | grep ".sh"))

function main () {
source_scripts
echo "Available scripts include:\n"

}
