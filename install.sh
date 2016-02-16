#!/bin/bash
dpkg --add-architecture i386 
apt-add-repository -y ppa:fish-shell/release-2
add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:wine/wine-builds

apt-get update

apt-get install fish
apt-get install ubuntu-make
apt-get install oracle-java8-installer
apt-get install --install-recommends winehq-staging
