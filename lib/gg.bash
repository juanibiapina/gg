#!/usr/bin/env bash

gg() {
  if [ -z "$GG_ROOT" ]; then
    local GG_ROOT="$HOME/.gg"
  fi

  if [ "$#" -eq 0 ]; then
    cd "$HOME"
  else
    declare -A dir_aliases

    if [ -e "$GG_ROOT/aliases" ]; then
      while read -r dir_name dir_path; do
        dir_aliases["$dir_name"]="$dir_path"
      done < "$GG_ROOT/aliases"
    fi

    if test "${dir_aliases["$1"]+isset}"; then
      cd ${dir_aliases["$1"]}
    else
      echo "gg: directory alias '$1' not found"
      false
    fi
  fi
}
