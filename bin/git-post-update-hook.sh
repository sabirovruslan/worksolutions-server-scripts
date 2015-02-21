#!/bin/sh

git-fix-server-changes.sh
git-pull.sh
git-fix-conflicts.sh
git-push.sh
git-push-bucket.sh