#!/bin/sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PATH="${PATH}:${DIR}/bin"

if [ "${SHELL}" -ne "/usr/bin/zsh" ];
then
    zsh && exit
fi