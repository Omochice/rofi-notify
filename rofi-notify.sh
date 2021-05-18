#!/usr/bin/env bash

function rofi-notify {
    # Please `theme` change to your favorite
    local theme="night-owl"
    local theme_option=$(readlink -f ${BASH_SOURCE[0]})/"$nightowl".rasi

    command echo $@ | rofi -theme $theme -dmenu >/dev/null 2>&1
}

rofi-notify $1
