#!/bin/sh

git-fix-server-changes
git-pull
git-fix-conflicts
git-push
git-push-bucket