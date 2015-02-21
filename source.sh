#!/bin/sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PATH="${PATH}:${DIR}/bin"

if [ ! -z "${ZSH}" ];
then
    exec zsh
fi