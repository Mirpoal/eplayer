#! /usr/bin/env bash

EXTRA_REPO=$1
LOCAL_WORKSPACE=$2

if [ -z $1 -o -z $2 ]; then
    echo "invalid call pull_repo.sh '$1' '$2'"
elif [ ! -d $LOCAL_WORKSPACE ]; then
    git clone $EXTRA_REPO $LOCAL_WORKSPACE
else
    echo "reuse extra repo"
fi
