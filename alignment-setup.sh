#!/usr/bin/env bash

# Install HTK
tar xvfz HTK-3.4.tar.gz
sudo apt-get install libc6-dev-i386 sox
cd htk
./configure --without-x --disable-hslab
make all && sudo make install

# Install p2fa-vislab
cd /vagrant
git clone https://github.com/srubin/p2fa-vislab.git
cd p2fa-vislab
git submodule init
git submodule update
sudo pip install -r requirements.txt
cd /vagrant

