#!/bin/sh

cargo build --release
mkdir -p "$PREFIX/bin"
cp build/target/recto "$PREFIX/bin"
cp build/target/verso "$PREFIX/bin"
