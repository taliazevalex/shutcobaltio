#!/usr/bin/env bash
set -e
TAG="frosty-forest-crimson-comet"
LIB="cosmic-harbor.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/taliazevalex/shutcobaltio/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
