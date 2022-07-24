#!/bin/bash

img=$(docker image ls | grep "vim-be-good")

if [ -n "$img" ]; then
    # echo "not empty"
  docker run -it --rm vim-be-good
else
    # echo "empty"
  ./build.sh
  if [$? -ne 0]
  then
    exit 1
  fi
  docker run -it --rm vim-be-good
fi
