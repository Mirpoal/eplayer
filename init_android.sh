#! /usr/bin/env bash

IJK_FFMPEG_LOCAL_REPO=extra/ffmpeg

set -e
SCRIPTS=scripts

git --version

function pull_fork()
{
    echo "== pull ffmpeg fork $1 =="
    sh $SCRIPTS/pull_repo_ref.sh $IJK_FFMPEG_LOCAL_REPO android/contrib/ffmpeg-$1
    #cd android/contrib/ffmpeg-$1
}

#pull_fork "armv5"
pull_fork "armv7a"
#pull_fork "arm64"
#pull_fork "x86"
#pull_fork "x86_64"

#./init-config.sh
#./init-android-libyuv.sh
#./init-android-soundtouch.sh
