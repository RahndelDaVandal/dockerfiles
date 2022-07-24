#!/bin/bash

docker build -f debian-base -t debian-base .

if [$? -ne 0]
then
  exit 1
fi

docker build -f debian-nvim0.4 -t debian-nvim0.4 .

if [$? -ne 0]
then
  exit 1
fi

docker build -t vim-be-good .

if [$? -ne 0]
then
  exit 1
fi
