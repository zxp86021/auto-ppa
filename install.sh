#!/bin/bash
#this script is use for ubuntu 14.04

sudo -s <<EOF

dpkg --add-architecture i386 
apt-add-repository -y ppa:fish-shell/release-2
add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:wine/wine-builds
add-apt-repository -y ppa:atareao/telegram

apt-get update

apt-get install -y fish ubuntu-make oracle-java8-installer telegram
apt-get install -y --install-recommends winehq-staging
wget -P /tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i /tmp/google-chrome*.deb
apt-get --yes --fix-broken install

EOF
