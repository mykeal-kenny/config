#!/usr/bin/env zsh
# -*- coding: utf-8 -*-


# Does Something
function new_script (){                                                 1 ↵
  if [[ $1 =~ ".sh" ]]; then
    echo $scriptconf >> "scripts/$1" &&\
    chmod +x "scripts/$1"
  else
    echo $scriptconf >> "scripts/${1}.sh" &&\
    chmod +x "scripts/${1}.sh"
  fi
}
