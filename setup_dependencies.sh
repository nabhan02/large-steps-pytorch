#!/bin/bash

# Make sure submodules are checked out
git submodule update --init --recursive

# Botsch-Kobbelt remesher
cd botsch-kobbelt-remesher-libigl
mkdir -p build
cd build
cmake ..
make -j
cd ../..

# nvdiffrast
sudo apt-get update && apt-get install -y --no-install-recommends \
    pkg-config \
    libglvnd0 \
    libgl1 \
    libglx0 \
    libegl1 \
    libgles2 \
    libglvnd-dev \
    libgl1-mesa-dev \
    libegl1-mesa-dev \
    libgles2-mesa-dev \
    cmake \
    curl
cd nvdiffrast
pip install .
