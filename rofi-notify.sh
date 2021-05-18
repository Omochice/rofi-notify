#!/usr/bin/env bash

function rofi-notify {
    # Please `theme` change to your favorite
    local theme="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/night-owl.rasi"
    command echo "$1" | rofi -theme $theme -dmenu >/dev/null 2>&1
}

rofi-notify $1
