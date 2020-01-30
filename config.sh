#!/usr/bin/env zsh
# -*- coding: utf-8 -*-
. "scripts/new_editorconfig.sh"
# template vars
editorconf=( $(cat templates/template_editorconfig.txt) )
scriptconf=( $(cat templates/template_script.txt) )

function new_script (){                                                 1 ↵
  if [[ $1 =~ ".sh" ]]; then
    echo $scriptconf >> "scripts/$1" &&\
    chmod +x $_
  else
    echo $scriptconf >> "scripts/${1}.sh" &&\
    chmod +x $_
  fi
}
