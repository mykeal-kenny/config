#!/usr/bin/env zsh

function pyinstall(){
  deps_array=(
    "flake8"
    "isort"
    "seed-isort-config"
    "black"
  )
pipenv install $deps_array --pre && pipenv shell
}

declare -A templates=(
  ".flake8" "$SOURCE/config/format/python/templates/flake8.64"
  ".isort.cfg" "$SOURCE/config/format/python/templates/isort.cfg.64"
  ".pre-commit-config.yaml" "$SOURCE/config/format/python/templates/pre-commit-config.yaml.64"
  "pyproject.toml" "$SOURCE/config/format/python/templates/pyproject.toml.64"
)


function make_config_files () {
  for k v in ${(kv)templates[@]};do
    cat $v | base64 -D >> "$1/$k"
    done
}

pyinstall && make_config_files
