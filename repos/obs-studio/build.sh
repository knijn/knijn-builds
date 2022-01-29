#!/bin/bash

wget https://cdn-fastly.obsproject.com/downloads/cef_binary_4638_linux64.tar.bz2
tar -xvjf ./cef_binary_4638_linux64.tar.bz2
cd obs-studio
mkdir build && cd build
cmake -DUNIX_STRUCTURE=0 -DCMAKE_INSTALL_PREFIX="${HOME}/obs-studio-portable" -DBUILD_BROWSER=ON -DCEF_ROOT_DIR="../../cef_binary_4638_linux64" ..
make -j4 && make install
