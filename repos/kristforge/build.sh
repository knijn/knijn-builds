#!/bin/bash
cd kristforge

cross build --target x86_64-pc-windows-gnu --release
cross build --target x86_64-unknown-linux-gnu --release

# copy build to the folder

mkdir ../../build/kristforge/linux_x86_64 -p
cp target/x86_64-unknown-linux-gnu/release/kristforge ../../build/kristforge/linux_x86_64
