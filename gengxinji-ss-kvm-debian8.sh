#! /bin/bash

echo if lsmod |grep 'bbr' command output not empty indicates bbr environment ready
lsmod |grep 'bbr'

apt-get -y update

# install php
apt-get -y install php5-cli

# bbr
wget --no-check-certificate -qO 'BBR_POWERED.sh' 'https://moeclub.org/attachment/LinuxShell/BBR_POWERED.sh' && chmod a+x BBR_POWERED.sh && bash BBR_POWERED.sh

# install shadowsocks-libev-debian
wget --no-check-certificate -O shadowsocks-libev-debian.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
chmod +x shadowsocks-libev-debian.sh
./shadowsocks-libev-debian.sh 2>&1 | tee shadowsocks-libev-debian.log
