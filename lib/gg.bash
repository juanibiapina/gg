#!/usr/bin/env bash

gg() {
  if [ "$#" -eq 0 ]; then
    cd "$HOME"
  else
    echo "gg: directory alias '$1' not found"
    false
  fi
}
