#!/usr/bin/env bash

set -euo pipefail

rm -f /usr/share/applications/nvim.desktop
rm -f /usr/share/applications/btop.desktop
rm -f /usr/share/applications/nvtop.desktop
rm -f /usr/share/applications/htop.desktop

dconf update