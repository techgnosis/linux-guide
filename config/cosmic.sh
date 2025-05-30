#! /usr/bin/env bash

set -euo pipefail

pacman -S \
cosmic-app-library \
cosmic-applets \
cosmic-bg \
cosmic-comp \
cosmic-files \
cosmic-icon-theme \
cosmic-idle \
cosmic-launcher \
cosmic-notifications \
cosmic-osd \
cosmic-panel \
cosmic-randr \
cosmic-screenshot \
cosmic-session \
cosmic-settings \
cosmic-settings-daemon \
cosmic-terminal \
cosmic-text-editor \
cosmic-wallpapers \
cosmic-workspaces \
xdg-desktop-portal-cosmic

# Skipping
#cosmic-greeter
#cosmic-store
#cosmic-player
