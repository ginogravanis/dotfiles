#!/usr/bin/env bash

export PATH="$PATH:$HOME/.local/bin"

if [[ -z "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
      exec startx
fi
