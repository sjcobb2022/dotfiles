#!/bin/bash
git clone https://github.com/google/shaderc.git
python shaderc/utils/git-sync-deps
cmake -S shaderc -B shaderc/build
cmake --build shaderc/build
cmake --install shaderc/build
