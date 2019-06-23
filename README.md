# riscv-formal-bench
A wrapper for riscv-formal

## Usage
1. Install prerequisites
```bash
sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev
```
1. Install all tools
```bash
git submodule update --init --recursive
./install.sh
```
1. Add ./bin to $path
```bash
source sourceMe.bashrc
```

