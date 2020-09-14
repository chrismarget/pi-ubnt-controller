#!/bin/sh -e

FETCHED="$(dirname $0)/.fetched_submodule"
if [ ! -f "$FETCHED" ]
then
  git submodule update --init
  touch "$FETCHED"
fi

PROJECT_DIR="$(dirname $0)"
export PROJECT_DIR="$(cd $PROJECT_DIR; pwd)"

APPLIANCE_BUILD_SCRIPT=${PROJECT_DIR}/raspbian-appliance/build.sh
[ -x $APPLIANCE_BUILD_SCRIPT ] && $APPLIANCE_BUILD_SCRIPT $*
