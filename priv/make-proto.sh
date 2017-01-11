#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $CURRENT_DIR/..

if [ -z $REBAR_DEPS_DIR ]; then
    REBAR_DEPS_DIR=deps
fi


if [ -z $PIQI ]; then
    PIQI="$REBAR_DEPS_DIR/piqi/priv/bin/piqi"
fi

$PIQI to-proto eto.piqi -o eto.piqi.proto

cd -
