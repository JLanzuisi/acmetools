#!/bin/sh

get_char() {
    case "$1" in
        *.tex | *.dtx | *.sty | *.cls| *.ini ) char='%' ;;
        * ) char='#'
    esac
}

