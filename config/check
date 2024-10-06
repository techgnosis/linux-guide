#! /usr/bin/env bash

set -euo pipefail

pacman -Q | tail
echo "\n\n"
cat /var/log/pacman.log | wc -l
echo "\n\n"
nix-env --query