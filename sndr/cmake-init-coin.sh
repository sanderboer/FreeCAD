#!/bin/bash
wget https://bitbucket.org/Coin3D/coin/downloads/coin-4.0.0-src.zip
unzip coin-4.0.0-src.zip

cmake -Hcoin-6enkw -Bcoin_build -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=/opt/coin4 -DCMAKE_BUILD_TYPE=Release -DCOIN_BUILD_DOCUMENTATION=OFF

pushd coin_build
make -j6
make install
popd
