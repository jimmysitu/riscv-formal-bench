#!/bin/bash

ROOT=$PWD

# Install Yosys, Yosys-SMTBMC and ABC
make -C yosys -j`nproc`
make -C yosys install PREFIX=$ROOT

# Install SymbiYosys
make -C SymbiYosys install PREFIX=$ROOT

# Install Z3
cd z3
python scripts/mk_make.py
cd build
make install PREFIX=$ROOT
cd $ROOT

# Install Boolector
cd boolector
./contrib/setup-lingeling.sh
./contrib/setup-btor2tools.sh
./configure.sh --prefix $ROOT
make -C build
make -C build install
cd $ROOT

echo "All tools installed"


