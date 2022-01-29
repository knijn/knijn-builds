#!/bin/bash
git clone https://github.com/tmpim/kristforge

# Make sure the dependencies are installed
#if [[ cat /etc/os-release == "" ]] 
sudo pacman -S docker cross
