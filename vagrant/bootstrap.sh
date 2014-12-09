#!/bin/bash

# Update everything to make things current
apt-get -y update

# Install useful utils
apt-get install -y vim curl make git-core exuberant-ctags automake binutils-dev mercurial bison

# Install gcc-4.9
apt-get install -y python-software-properties
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get -y update
apt-get install -y gcc-4.9 g++-4.9 cpp-4.9 gccgo-4.9
update-alternatives --remove-all gcc
update-alternatives --remove-all cpp
update-alternatives --remove-all g++
update-alternatives --remove-all gcc-ar
update-alternatives --remove-all gccgo
update-alternatives --remove-all gcc-nm
update-alternatives --remove-all gcc-ranlib
update-alternatives --remove-all gcov
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-4.9 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20
update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-4.9 20
update-alternatives --install /usr/bin/gccgo gccgo /usr/bin/gccgo-4.9 20
update-alternatives --install /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-4.9 20
update-alternatives --install /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-4.9 20
update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-4.9 20
update-alternatives --config gcc
update-alternatives --config cpp
update-alternatives --config g++
update-alternatives --config gcc-ar
update-alternatives --config gccgo
update-alternatives --config gcc-nm
update-alternatives --config gcc-ranlib
update-alternatives --config gcov

# Install java 1.7
mkdir -p /etc/puppet/modules
puppet module install "puppetlabs/java"
