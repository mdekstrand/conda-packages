#!/bin/bash

set -x
set -e

BINDIR=$(stack path --local-install-root)/bin
make .stack-work/PlantumlJar.hs src/Tag.hs
stack build --ghc-options="-L$CONDA_PREFIX/lib"
mkdir -p $PREFIX/bin
cp -v $BINDIR/pp $PREFIX/bin
