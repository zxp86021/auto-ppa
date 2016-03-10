#!/bin/bash
#this script is use for ubuntu 14.04

sudo -s <<EOF

apt-get update
apt-get dist-upgrade -y

dpkg --add-architecture i386 
apt-add-repository -y ppa:fish-shell/release-2
add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:wine/wine-builds
add-apt-repository -y ppa:atareao/telegram

apt-get update

apt-get install -y fish ubuntu-make oracle-java8-installer telegram npm
apt-get install -y git unity-tweak-tool gparted curl vlc filezilla build-essential
apt-get install -y --install-recommends winehq-staging

#install google chrome
curl -L -o /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i /tmp/chrome.deb
apt-get -f install -y

#install nodejs lts use n
npm install -g n
n lts

apt-get autoremove -y

EOF
