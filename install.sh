#!/usr/bin/env bash -ue

function install {
    local src=$(dirname $(readlink -f ${BASH_SOURCE[0]}))/rofi-notify.sh
    local dst=$HOME/.local/bin/rofi-notify
    if [ -d $(dirname $dst) ]; then
        command ln -snf $src $dst
        command chmod +x $dst
    else
        printf "$(dirname $dst) is not exists !\nexec '\$ mkdir $(dirname $dst)'" >&2
        exit
    fi
}

install
