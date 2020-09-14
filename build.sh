#!/bin/sh -e

FETCHED="$(dirname $0)/.fetched_submodule"
if [ ! -f "$FETCHED" ]
then
  git submodule update --init
  touch "$FETCHED"
fi

PROJECT_DIR="$(dirname $0)"
PROJECT_DIR="$(cd $PROJECT_DIR; pwd)"
echo PROJECT_DIR $PROJECT_DIR
