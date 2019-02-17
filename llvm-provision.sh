#! /bin/bash
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -

sudo apt-get install clang-7 lldb-7 lld-7w -y
sudo apt-get install libllvm-7-ocaml-dev libllvm7 llvm-7 llvm-7-dev llvm-7-doc llvm-7-examples llvm-7-runtime -y