#!/usr/bin/env bash

function rofi-notify {
    # Please `theme` change to your favorite
    local theme="night-owl"
    local theme_option=$(dirname $(readlink -f ${BASH_SOURCE[0]}))/"$theme".rasi
    echo $theme_option

    command echo $@ | rofi -theme $theme_option -dmenu >/dev/null 2>&1
}

rofi-notify $1
