#!/bin/bash

REPO=${1}
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -z "${REPO}" ]; then
    REPO=${USER};
fi

cd "${HOME}/www/${REPO}.app-web.ru"
git init
git config core.filemode false
git remote add origin "${HOME}/repo/${REPO}.app-web.ru.git"
git add .
git config --global user.email "${REPO}@app-web.ru"
git config --global user.name "${REPO} on app-web.ru"
git commit -m "init commit"
git push -u origin master
cat "${DIR}/../dist/post-update" | sed "s/#HOSTNAME#/${REPO}/"  > "${HOME}/repo/${REPO}.app-web.ru.git/hooks/post-update"
chmod +x "${HOME}/repo/${REPO}.app-web.ru.git/hooks/post-update"