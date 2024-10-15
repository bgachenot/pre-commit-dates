#!/usr/bin/env bash

# Only update the commit date if in the middle of a rebase
if [ -d "$(git rev-parse --git-dir)/rebase-merge" ] || [ -d "$(git rev-parse --git-dir)/rebase-apply" ]; then
    # Amend the commit with the current date as the commit date
    GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date="$(date)"
fi