#!/bin/bash


# Linux x86
cd obs-studio
mkdir build
## split so the cd still runs
cd build
cmake -DUNIX_STRUCTURE=0 -DCMAKE_INSTALL_PREFIX="../../obs-studio-portable" -DBUILD_BROWSER=OFF -DBUILD_VST=OFF -DCEF_ROOT_DIR="../../cef_binary_4638_linux64" ..
make -j4 && make install

# Copy files to build

cd ../..
## Now in repos/obs-studio

mkdir ../../builds/obs-studio/linux_x86_64 -p
tar -C obs-studio-portable -cz . > ../../builds/obs-studio/linux_x86_64/obs-studio.tar.gz
echo "Size of tarball"
du -sh ../../builds/obs-studio/linux_x86_64/obs-studio.tar.gz