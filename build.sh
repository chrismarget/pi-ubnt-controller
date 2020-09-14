#!/bin/bash -e

FETCHED="$(dirname $0)/.fetched_submodule"
if [ ! -f "$FETCHED" ]
then
  git submodule update --init
  touch "$FETCHED"
fi
