#!/bin/sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PATH="${PATH}:${DIR}/bin"

zsh && exit