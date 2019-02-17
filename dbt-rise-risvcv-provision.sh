#! /bin/bash

git clone https://github.com/Minres/DBT-RISE-RISCV.git

conan remote add minres https://api.bintray.com/conan/minres/conan-repo
conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan

cd DBT-RISE-RiscV
mkdir build
cd build
cmake ..
cmake --build .

# sudo apt-get install -y git python-pip build-essential cmake libloki-dev zlib1g-dev libncurses5-dev \	
#     libboost-dev libboost-program-options-dev libboost-system-dev libboost-thread-dev llvm-dev llvm-doc
# pip install --user conan
