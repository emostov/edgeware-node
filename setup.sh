#!/usr/bin/env bash

./scripts/init.sh

RELEASE=""
if [ -z "$DEBUG_BUILD" ]; then
    RELEASE="--release"
fi

source $HOME/.cargo/env

WASM_BUILD_TOOLCHAIN=nightly-2020-10-06 cargo build $RELEASE
