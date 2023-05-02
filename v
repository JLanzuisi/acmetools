#!/bin/sh

if ! ps -aux | pgrep nvim >/dev/null
then
    nvim --listen ~/.cache/nvim/server.pipe $*
else
    nvim --server ~/.cache/nvim/server.pipe --remote $*
fi

