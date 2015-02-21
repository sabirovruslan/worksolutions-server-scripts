#!/bin/bash

REPO=${1}

if [ -z "${REPO}" ]; then
    REPO=${USER}
fi

mkdir -p "${HOME}/repo/${REPO}.app-web.ru.git"
cd "${HOME}/repo/${REPO}.app-web.ru.git"
git init --bare
