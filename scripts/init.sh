#!/usr/bin/env bash

ERR='\033[0;31m[ERROR]\033[0m'
WRN='\033[1;33m[WARNING]\033[0m'
INF='\033[1;34m[INFO]\033[0m'

sudo add-apt-repository -y ppa:avsm/ppa
sudo apt-get update
sudo apt-get -yf install build-essential m4 ocaml ocaml-native-compilers camlp4-extra opam
sudo apt-get -yf install openssh-client libssl-dev

# install opam and all dependencies
PACKAGES="mirage tcpip"
opam init -y
eval `opam config env`
opam install $PACKAGES -y
