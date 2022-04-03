#!/usr/bin/env bash

rm -rf build \
&& rm -rf debug \
&& mkdir build \
&& mkdir debug \
&& rustc src/add.rs -o build/add.wasm --crate-type=cdylib --target=wasm32-unknown-unknown \
&& wasm2wat build/add.wasm -o debug/add.wat \
&& python3 -m http.server