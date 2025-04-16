#! /usr/bin/env bash

set -euo pipefail

NAME=$1

MACHINE=/var/lib/machines/$NAME

if test -d $MACHINE; then
  echo "machine already exists at $MACHINE"
  exit
fi

sudo mkdir $MACHINE


sudo pacstrap -K -c $MACHINE \
base \
micro \
sudo \
git \
less \
which