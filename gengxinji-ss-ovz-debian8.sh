#! /bin/bash

apt-get -y update

# install php
apt-get -y install php5-cli

# install lkl
wget --no-check-certificate https://github.com/91yun/uml/raw/master/lkl/install.sh && bash install.sh && ping 10.0.0.2

# install shadowsocks-libev-debian
wget --no-check-certificate -O shadowsocks-libev-debian.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
chmod +x shadowsocks-libev-debian.sh
./shadowsocks-libev-debian.sh 2>&1 | tee shadowsocks-libev-debian.log
